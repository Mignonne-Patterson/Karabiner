# Karabiner Key Mapping Module
define module karabiner::keymap
    require 'karabiner/config'
  	require_relative './configurator/base_configuator'     # Base configurator class for keyboard settings.
	require_relative './layer_manager/keyboard_layer_classifier.rb'   # Keyboard layer classifier utility. This tool will be used to categorize keyboards based on layers and help with the configuration of specific key mappings depending upon those categories, if needed in future versions or updates
  require 'karabiner/keymap_configurator'
	require_relative './layer_manager/keyboard_layer_handler.rb'     # Keyboard layer handler utility. This tool will handle keyboard operations such as adding a new mapping to an existing one and deleting ones that are no longer used.	 
define class KeyMapConfig
    include ConfigManager::BaseConfiguration, LayerHandlerInterface,
  extend BaseKeymapOperations      # The core functionality of our keymapping module is in the following methods:
send_keys(mapping)	receive_inputs(input_type)       remove_key_mapping(key_id = nil)   update_layer_config(layer_name: 'default') 
define class KeyMapConfigurator < ConfigManager::BaseConfiguration
    include BaseKeymapOperations, LayerHandlerInterface  # Including these interfaces will provide our configurator with the necessary methods to manage key mappings.
	# Define a method that can be used for sending specific keys or sequences of them based on user input. This might also trigger further actions in other parts of your application depending upon how you set it up (e.g., automation).
define send_keys(mapping)	key_sequences = mapping[:sequences] || [mapping]
	  key_presses.each do |seq|
    	send_key(seq) if seq.any?
      end
   rescue => e	error_handler(e, __method__,:send_keys_error,