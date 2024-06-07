# Karabiner Configurator Module
def module:Karabiner
    class configurator
        def initialize(config)
            @config = config || {}
        end
 
         # Method to remap a specific key or layer of keys.
        def remap_keys(from:,to:)   raise "Invalid parameters" if from.nil?||from.empty?
or  to nil??or
to empty?