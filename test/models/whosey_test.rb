require 'test_helper'
class WhoseyTest < ActiveSupport::TestCase
  describe 'Whosey' do
    it 'has a name' do
      assert Whosey.new(name: 'Alex').name == 'Alex'
    end

    it 'gets 0 points' do
      assert Whosey.new.points == 0
    end

    it 'has no begs' do
      assert Whosey.new.begs == []
    end

    it 'has no fulfilments' do
      assert Whosey.new.fulfilments == []
    end
  end
end

