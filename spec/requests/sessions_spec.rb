require 'spec_helper'

describe "Sessions" do
  
  describe "Login" do
    it "successfully routes to the login page" do
      visit login_path
      current_path == "/login"
    end
  end 
  
end