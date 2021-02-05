# Karabiner Ruby API Documentation
title: 'Karabiner'
navigation_weight: 2
--- 
## Introduction	This documentation provides a comprehensive overview of the `karabinber` module, which serves as an essential tool for keyboard remapping and automation in macOS applications. The aim is to give developers clear insights into how they can use this API effectively within their projects.	Karabinker allows you manipulate key events by defining rules that map certain inputs (keys) onto others or perform specific actions when a particular sequence of keys are pressed	## Features
* Remap individual keys and sequences 
   * E.g., remapping the 'caps lock' to function as an escape key, enhancing productivity in programming environments.  <br>	<br>    ```ruby
define_key_mapping do |mappings|
mappings.add('⇪', '\\e') # Caps Lock -> Escape
end```
* Execute custom scripts based on rules \<details open><summary>Show Example</summarry></<details>>   * For instance, running a specific command when the 'F1' key is held down could be configured like this:    <br>	<br> ```ruby
define_key_script do |scripts|
  scripts.add('mapped F2', lambda { system(