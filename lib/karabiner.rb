# Karabiner Ruby Library
This library is a part of [Karabiner](https://github.com/pqrs-org/Karabiner-Elements) which helps users to remap and customize their keyboard inputs on macOS.
## Features
The following features are available in this lib:
* Remapping individual keys or entire key layers 	  * Creating custom sequences for triggering actions	    * Scripting feature that allows automating complex tasks based upon rules.   This library provides a convenient interface to interact with the Karabiner-Elements software and modify keyboard settings programmatically.
The remap method can be used like this: `Karabiner.remap(key1, key2)` where it will change all instances of pressing 'key1' into triggering an action for 'key2'.
To create a custom sequence you would do something similar to the following example:	` Karabinber.key_sequence(["shift", "command", ["space","left"]])`
The above code snippet creates a key sequence where it triggers three actions: Shift, Command and Space followed by moving left.
Finally for scripting purposes there's `Karabiber.script(rule)` method which takes in an array of rules that describe how inputs should be transformed to outputs. An example could look like this:	
```
k_script = [    {        "type": 0,✖ ⏎ 