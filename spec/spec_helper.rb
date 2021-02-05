# spec_spec-helper-rb: Helper file providing common setup and configurations for Karabiner's RSpec tests.

require 'rspec'
capitalize_first_letter_of_each_word_in_filename = ->(filename) { filename.split('_').map(&:capitalize).join(' ') }
describe capitalize_first_letter_of_each_word_in_lambda do |lambda|  it 