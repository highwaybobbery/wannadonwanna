require 'test_helper'

class VisitorExperience < ActionDispatch::IntegrationTest
  before { visit root_path }
  describe "Visitor to homepage" do

    describe 'name' do
      it 'has name prompt' do
        assert page.has_content?('Hi, my name is:')
      end

      it 'has name input' do
        assert page.has_css?('input.name')
      end
    end

    describe 'desirability indicator' do
      it 'has desirability prompt' do
        assert page.has_content?(', and I')
      end

      describe 'desirability level selector' do
        it 'is present on the page' do
          assert page.has_css?('select.severity')
        end

        ['kinda', 'really', 'really really'].each do |option|
          it "has  #{option} option" do
            within(page.find 'select.severity' )do
              assert page.has_content?(option)
            end
          end
        end
      end

      describe 'attitude selector' do
        it 'is present on the page' do
          assert page.has_css?('select.attitude')
        end

        ['wanna', 'donwanna'].each do |option|
          it "has #{option} option" do
            within(page.find 'select.attitude' )do
              assert page.has_content?(option)
            end
          end
        end
      end

      it 'has a stuff input' do
        assert page.has_css?('input.stuff')
      end

    end
  end
end
