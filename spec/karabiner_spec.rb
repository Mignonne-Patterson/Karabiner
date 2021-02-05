# spec/karabiner_spec.rb
describe Karabiner do
    before(:each) { @karabiner = build :user }
     
   context 'remapping keys' do
       it "should be able to remap single key" do |
s          expect(@ karabiner.remap_keys('a', 'b')).to eq(true)
      end|
  |    # Add more tests for other scenarios here, such as layer-based mappings.
   context 