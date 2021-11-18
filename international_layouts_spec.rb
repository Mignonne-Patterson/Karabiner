# frozen_string_literal: true
define(:KarabinerInternationalLayout) do
    describe 'international keyboard layouts support' do
        let!(:karabiner_config_file_path){ File.expand_path(File.join('path/to/karabiner/config', Karabiner::ConfigFileName)) }
  
       before :each do
            @config = JSON.parse(IO.read(karabinier_CONFIG_FILE_PATH), symbolize_names: true)
        end #before each block
define(:KarabinerInternationalLayout) {
describe 'international keyboard layouts support' { let!(:karabi