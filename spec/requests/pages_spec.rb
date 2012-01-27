require 'spec_helper'

describe "Pages" do
  describe "Home" do
    before(:each)do 
      visit root_path
    end
    
    it "successfully routes to the homepage" do
      current_path == "/"
    end
    
    it "should have the right title" do
      page.should have_selector("title", :content => "Supply Side")
    end
    
    it "should have the right headline" do
      page.should have_selector("h1", :content => "Supply Side")
    end
  end
end