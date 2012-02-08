require 'spec_helper'

describe User do
  before(:each) do
    @user = Factory.build(:user)
  end
   
  it "has a valid factory" do
    Factory(:user).should be_valid
  end
  
  
  describe "emails" do
    it "should have an email address" do
      @user.email.should_not == ""
    end
    
    it "should reject duplicate email addresses" do
      user_with_duplicate_email = Factory.build(:user, :email => "lee@example.com")
      user_with_duplicate_email.should_not == @user.email
    end
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