require 'spec_helper'

RSpec.describe "As a visitor" do
  describe "When I visit the home page '/'" do
    it "I see a navbar with several buttons" do
      visit '/'
      within '.navbar' do
        expect(page).to have_link("About")
        expect(page).to have_link("My Experience")
      end
    end
  end
end
