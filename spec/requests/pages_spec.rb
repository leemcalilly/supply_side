require 'spec_helper'

describe "Pages" do
  describe "Home" do
    before(:each) do 
      visit root_path
    end
    
    it "successfully routes to the homepage" do
      current_path == "/"
    end
    
    it "should have the right title" do
      page.should have_selector("title", :text => "Home | Supply Side")
    end
    
    it "should have the right header" do
      page.should have_selector("h1", :text => "Supply Side")
    end
    
    it "should link to the secret page" do
      click_link("Visit the secret page")
      current_path == "/secret"
    end
  end
  
  describe "Secret" do
    before(:each) do 
      user = Factory(:user)      
      login_as user
      visit secret_path
    end
    
    it "successfully routes to the secret page" do
      current_path == "/secret"
    end
    
    it "should have the right title" do
      page.should have_selector("title", :text => "Secret")
    end
    
    it "should have the right header" do
      page.should have_selector("h1", :text => "Secret")
    end
    
    it "should link back to the homepage" do
      click_link("Return Home")
      current_path == "/"
    end
  end
end