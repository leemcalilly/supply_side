require 'spec_helper'

describe "Sessions" do
  
  describe "Login" do
    before(:each) do
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
  end 
  
end