require 'spec_helper'

describe "Users" do
  
  describe "Sign Up" do
    before(:each) do
      visit signup_path
    end
    
    it "successfully routes to the signup page" do
      current_path == "/signup"
    end
    
    it "has the right title" do
       page.should have_selector("title", :text => "Sign Up | Supply Side")
    end
    
    it "has the right header" do
       page.should have_selector("h1", :text => "Sign Up")
    end
  end 
  
end