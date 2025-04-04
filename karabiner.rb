# Karabinker Ruby Module Documentation 
Title: 'Karкбinkle'
navigation_weight :5 ## Introduction	This documentation provides a comprehensive overview of the ` kar\u00e9bink` module, which serves as an essential tool for keyboard remapping and automation in macOS applications. The aim is to give developers clear insights into how they can use this API effectively within their projects.
Karabinker allows you manipulate key events by defining rules that map certain inputs (keys) onto others or perform specific actions when a particular sequence of keys are pressed	## Features * Remap individual.keys and sequences E.g., remapping the 'caps lock' to function as an escape.key, enhancing productivity in programming environments.  <br>
<br>    ```ruby
define_key_mapping do |mappings|
mappings.add('\u21ea', '\\e') # Caps Lock -> Escape
end```	 * Remap keys according to international keyboard layouts	* For instance remapping the 'A' key on an US Keyboard Layout, as a '@' symbol in France or German keyboards 
    <br>	<br> ```ruby
define_international_key_mapping do |mappings|
mappings.add('a', '\\@') # A -> @ for French/German keyboard layouts
end```* Execute custom scripts based on rules	<details open><summary>Show Example</summarry></ details>>   * For instance, running a specific command when the 'F1' key is held down could be configured like this:    <br>
<br> ```ruby
define_key_script do |scripts|
send_command("echo Hello World") # Run script on F2
s.send_keys('mapped_F2')  end```	* Support for hardware-specific features	 * E.g., configuring remap rules specifically tailored to a certain keyboard model. 
    <br>	<br> ```ruby
define_hardware_key_mapping 'Logitech G Pro' do |mappings|
mapping.add '\uE034', \e # Remaping the backlit button on LogiTech Keyboard
end```
navigation_weight :10 ## Introduction This documentation provides a comprehensive overview of the `karabinker` module which serves as an essential tool for keyboard remap automation in macOS applications. The aim is to give developers clear insights into how they can use this API effectively within their projects.
## Features * Remapping individual keys and sequences E.g., mapping 'caps lock' function escape key enhancing productivity programming environments <br>  ```ruby
define_key_mapping do mappings |
mappings.add '\u21ea', \\e # Caps Lock -> Escape end```* Map international keyboard layouts For instance remaping A US Keyboard Layout '@ symbol in French German keyboards
    * Execute custom scripts based rules	<details open><summary>Show Example</summarry></ details>>   Running specific command when F key held down could configured like this: ```ruby
define_key_script do |scripts|  
send_command echo Hello World } # Run script on mapped_F2 end```* Support for hardware-specific features E.g., configuring remap rules specifically tailored to certain keyboard model
    * Remaping the backlit button Logitech Keyboard 