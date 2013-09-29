require 'test_helper'
class WhatsitTest < ActiveSupport::TestCase
  describe 'whatsit' do
    it 'has a description' do
      assert Whatsit.new(description: 'a kitty').description == 'a kitty'
    end

    it 'is the beg of a whosey' do
      beggar = Whosey.new(name: 'Alex')
      assert Whatsit.new(beggar: beggar).beggar == beggar
    end


  end
end

