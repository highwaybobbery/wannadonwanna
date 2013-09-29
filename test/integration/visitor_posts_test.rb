require 'test_helper'
class VisitorPosts < ActionDispatch::IntegrationTest
  describe 'as a visitor, i post a new item' do
    before do
      visit root_path
      fill_in 'name', with: 'Alex'
      select 'really really', from: 'severity'
      select 'wanna', from: 'attitude'
      fill_in 'stuff', with: 'a kitty'
      click_on('Post')
    end

    it 'creates a whosey' do
      assert Whosey.count == 1
    end

    it 'creates a whatsit' do
      assert Whatsit.count == 1
    end

    it 'the whatsit is the beg of the whosey' do
      assert Whatsit.first.beggar eq Whosey.first
    end

    it 'shows the item in the index' do
      assert page.has_content? 'Alex really really wants a kitty'
    end
  end
end
