This project is a minimal demonstration of a segfault that occurs in Godot 4.1.3
when print statements are used during an Editor Plugin's `_exit_tree` method.
The segfault happens reliably for me on Pop!_OS 22.04 (~=Ubuntu 22.04). It
happens with both a custom debug build of Godot 4.1.3-stable as well as the
official 4.1.3-stable binary.

As shown in `no-print-no-crash.txt`, the same project will not crash if the
print statement in the editor plugin is removed.