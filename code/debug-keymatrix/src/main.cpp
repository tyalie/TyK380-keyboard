#include <Arduino.h>
#include <HardwareSerial.h>
#include <string.h>
#include <stdarg.h>

#define PRINT_FULL_MATRIX 1

#define PN (uint8_t)-1
#define COLS_SIZE 15
#define ROWS_SIZE 8

const static uint8_t PIN_COLS[] = {
  27,  8, 11, 15, 40, 37, 39,  6,  
   4,  5, 29,  3, 45, 44, 43
};

const static uint8_t PIN_ROWS[] = {
  31,  2, 10,  9, 46, 36, 38, 17
};


bool read_pins(uint8_t arr[ROWS_SIZE][COLS_SIZE]);
void print_matrix(uint8_t arr[ROWS_SIZE][COLS_SIZE]);
void print_matrix_short(uint8_t arr[ROWS_SIZE][COLS_SIZE]);
uint64_t calculate_hash(uint8_t *arr, size_t length);
void mprintf(char* format, ...);
void mflush();

void setup() {
  Serial.begin(9600);
  while (!Serial) { ; }
  Serial.println("Start");

  for (const uint8_t &i : PIN_COLS) {
    pinMode(i, INPUT);
  }
  for (const uint8_t &i : PIN_ROWS) {
    pinMode(i, INPUT);
  }
 
  Serial.println("- Pins initialized");
  Serial.println("- Setup complete");
}


uint64_t previous_hash = 0;

void loop() {
  uint8_t matrix[ROWS_SIZE][COLS_SIZE] = {0};
  read_pins(matrix);

  uint64_t hash = calculate_hash(*matrix, sizeof(matrix));
  if (previous_hash != hash) {

    if (previous_hash == 0 || PRINT_FULL_MATRIX) {
      // print matrix once
      // Serial.print("\033[2J");
      print_matrix_short(matrix);
      print_matrix(matrix);
    } else {
      print_matrix_short(matrix);
    }
  }
  previous_hash = hash;

  delay(10);
}


bool read_pins(uint8_t arr[ROWS_SIZE][COLS_SIZE]) {
  memset(arr, 0xFF, ROWS_SIZE * COLS_SIZE * sizeof(bool));

  for (size_t i = 0; i < ROWS_SIZE; i++) {
    uint8_t main = PIN_ROWS[i];
    if (main == PN)
      continue;

    pinMode(main, OUTPUT);
    digitalWrite(main, LOW);
    delay(1);

    for (size_t k = 0; k < COLS_SIZE; k++) {
      uint8_t listener = PIN_COLS[k];
      if (listener == main || listener == PN)
        continue;

      pinMode(listener, INPUT_PULLUP);
      arr[i][k] = 0;
      for (size_t s = 0; s < 3; s++) {
        arr[i][k] += digitalRead(listener);
      }
      arr[i][k] = arr[i][k] >= 2;
      
      pinMode(listener, INPUT);
    }

    pinMode(main, INPUT);
  }

  return true;
}

void print_matrix(uint8_t arr[ROWS_SIZE][COLS_SIZE]) {
  mprintf("    ");
  for (size_t j = 1; j <= COLS_SIZE; j++)
    mprintf("%#2u ", j);
  mprintf("\n");

  for (size_t i = 0; i < ROWS_SIZE; i++) {
    mprintf("%#2u: ", i + 1);
    for (size_t j = 0; j < COLS_SIZE; j++) {
      char c = '?';
      if (arr[i][j] == HIGH)
        c = ' ';
      else if (arr[i][j] == LOW)
        c = '#';

      mprintf(" %c ", c);
    }
    mprintf("\n");
  }

  mflush();
}

void print_matrix_short(uint8_t arr[ROWS_SIZE][COLS_SIZE]) {
  mprintf("\n-------------\n");
  for (size_t i = 0; i < ROWS_SIZE; i++) {
    for (size_t j = 0; j < COLS_SIZE; j++) {
      if (arr[i][j] == LOW) {
        mprintf("Hit: %2u / %2u\n", i + 1, j + 1);
      }
    }
  }
  mflush();
}


char buff[200];
char *target = NULL;

void mprintf(char* format, ...) {
  va_list argp;
  va_start(argp, format);

  if (target == NULL)
    target = buff;

  target += vsprintf(target, format, argp);

  char* p = strchr(buff, '\n');
  if (p != NULL) {
    *p = '\0';
    Serial.println(buff);
    memmove(buff, p, (p - buff));
    target = buff;
  }
}

void mflush() {
  Serial.print(buff);
  buff[0] = '\0';
  target = buff;
}

/**
 * @brief Calculating sdbm hash for input byte string
 * 
 * @param arr The bytes
 * @param length length of input array
 * @return uint64_t The hash
 */
uint64_t calculate_hash(uint8_t *arr, size_t length) {
  uint64_t hash = 0;
  for (size_t i = 0; i < length; i++) {
    hash = arr[i] + (hash << 6) + (hash << 16) - hash;
  }
  return hash;
}