# TyK380 - A Logitech K380 based custom membrane keyboard

This project uses Logitech K380 keyboard and fully replaces its internal logic,
equipping it with cool features like the ZMK keyboard firmware, USB and an integrated
Li-Ion battery.


## The "_Whyyy_ thoo?"

This project was born out of the need for a very robust but lightweight keyboard and
my custom key layout needs. I wanted a keyboard where one doesn't need an extra
casing when it is squeezed between your laptop and books inside an already struggling
backpack without losing the comfort of key layers, macros, tap-dance and more.

The choice fell on the Logitech K380, as it is easy to source, cheap (for a custom
keyboard), has a build in on/off switch and already very robust. Additional perks are
the membrane switches, which I personally prefer over normal MK switches and are
essentially indestructible.


## The mod

The actual logic inside the original K380 is contained on a small PCB in the upper
left corner (from the top) with the key matrix attached using an FPC cable. This
makes it really easy to trash it and put your own PCB inside. The Li-Ion battery also
fits snugly in the previous AAA battery compartment.

The `hardware` folder contains the schematic and PCB for the mod-chip. It uses an
nRF52840 processor for wireless (and wired) connectivity, uses WS2812 for status LEDs
and integrates a sensible Li-Ion charging IC. Except for the newly added USB port and
a few more LED colors, the mod is essentially indistinguishable from the outside.

The only part of the mod, that requires a bit more effort besides potentially
soldering the PCB, is the drilling on the case for the USB-C port. In my first
revisions also integrated a completely oversized Li-Ion battery which didn't fit into
the battery bay without some subtractive manufacturing.


### Features

- nRF52840 - a low power, but feature-rich wireless IC
- ZMK support
- easy to integrate
- replaces AAA batteries with a Li-Ion battery
- a fully functioning USB port, for charging, connecting and programming
- RGB status LEDs


### Limitations

Besides not being able to really mix up the keyboard layout, the biggest problem
there is with the keyboard is the lack of phantom key blocking. The keyboard matrix
itself lacks any kind of diodes - presumably to save on costs - and is such prone to
ghosting. In normal use one doesn't really notice that, as the vendor firmware only
supports three key presses at a time and the key matrix traces are routed all over
the place, so that common key combinations won't result in ghost key presses.

