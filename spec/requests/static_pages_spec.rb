require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages content" do

    it "should have a '/home' page" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have an 'help' page" do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
  end

  describe "GET /static_pages title" do
    it "should have a title" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end

end
