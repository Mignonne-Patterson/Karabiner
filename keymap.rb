# lib/karabiner/keymap.rb
class Karabiner
 
	class KeyMap < BaseClass
 # Initialize the key mapping system.	def initialize()
#	super() is called to call constructor of superclass if any. If there are no super class it will be automatically nil or Object Class in this case since we dont have a parent calss	super()	println "Initializing KeyMap"	help = 'Keymap module: Remap keys and create custom sequences'	description(help)	# Set the initial key map	@key_map_hash={}
end
 
def remap_key(old,new,context) #Remaps a single keyboard keystroke.	super()	if @key_mapping[old] then puts "Key already mapped to #{@remapping["#{new}"].first}. Cannot change"	return false else	puts 