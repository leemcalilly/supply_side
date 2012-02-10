require 'spec_helper'

describe "Sessions" do
  
  describe "Login" do
    before(:each) do
      user = Factory(:user, :email => "lee@example.com")
      visit login_path
    end
    
    it "successfully routes to the login page" do
      current_path == "/login"
    end
    
    it "has the right title" do
       page.should have_selector("title", :text => "Log In | Supply Side")
    end

    it "has the right header" do
       page.should have_selector("h1", :text => "Log In")
    end
    
    it "successfully logs in a user" do
      user = Factory(:user)
      fill_in "Email", :with => "lee@example.com"
      fill_in "Password", :with => "secret"
      click_button "Log In"
      page.should have_content("Logged in!")
    end
    
    it "should have a remember me checkbox" do
      page.should have_selector("label", :text => "Remember me")
    end
    
    it "allows you to login with the remember me checkbox" do
      user = Factory(:user)
      fill_in "Email", :with => "lee@example.com"
      fill_in "Password", :with => "secret"
      check("Remember me")
      click_button "Log In"
      page.should have_content("Logged in!")
    end
  end 
end