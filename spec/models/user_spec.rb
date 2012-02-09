require 'spec_helper'

describe User do
  before(:each) do
    @user = Factory.create(:user, :email => "test@example.com")
  end
   
  it "has a valid factory" do
    Factory(:user).should be_valid
  end
  
  describe "passwords" do
    it "should have a password" do
      @user.password.should_not == ""
    end
  
    it "should have a password confirmation" do
      @user.password_confirmation.should_not == ""
    end
  
    it "should have a password confirmation that equals the password" do
      @user.password_confirmation == @user.password
    end
  end
end