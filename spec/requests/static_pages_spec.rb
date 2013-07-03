require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    
    it "should have the content 'Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Home")
    end
    
    it "should have a non-blank body" do
      visit '/pages/home'
      page.body.should_not =~ /<body>\s*<\/body>/
    end
  end

describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/pages/about'
      page.should have_selector('title',
                    :text => 'Ruby on Rails Tutorial Sample App | About Us')
    end
end

describe "Contact page" do
  
  it "should have the h1 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
  it "it should have the title 'Contact Us" do
    visit '/pages/contact'
    page.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Contact Us")
  end
end

end