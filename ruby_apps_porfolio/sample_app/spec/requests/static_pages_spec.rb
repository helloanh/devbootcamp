require 'spec_helper'

describe "StaticPages" do

  describe "home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')

    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector 'title', :text => "Ruby on Rails Tutorial Sample App | Home"
    end
  end



  describe "help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "about page" do
    it "should have content 'About Us' " do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end

end
