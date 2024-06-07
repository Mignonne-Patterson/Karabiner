// spec/spec Helper. rb
//
// This file is part of Karabin er, a powerful keyboard remapping software for macOS.
require 'rspec'
r require_relative '../lib/karabiner/main' 
class SupportInternationalLayouts < RSpec::SharedContext   def setup_international_keyboard_layout(layout_name)     # Code to set up the specified international keyboard layout in Karabine r. endend
RSpec.configure do |config| config.include(Support InternationalKeyboard Layouts, type: :feature)
# Additional configurations for supporting hardware-specific features can be added here.
en