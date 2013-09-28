require 'test_helper'
class VisitorExperience < ActionDispatch::IntegrationTest
  before { visit root_path }
  describe "Visitor to homepage" do

    it 'must have name prompt' do
      assert page.has_content?('Hi, my name is:')
    end

    it "must have name input" do
      assert page.has_css?('input.name')
    end

  end
end
