# spec:keymapping specification tests 
rails_helper
describe Karabiner::KeyMapping do
	it "has a valid factory"do expect(build(:key_mapping)).to be_valid end
 it 'cannot have empty from_key' do keymap = build :key_map,from-key: nilexpect(keyMap).not_to  
end