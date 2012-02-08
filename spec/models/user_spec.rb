require 'spec_helper'

describe User do
  before(:each) do
    @user = Factory.build(:user)
  end
   
  it "has a valid factory" do
    Factory(:user).should be_valid
  end

  it "should have an email address" do
    @user.email.should_not == ""
  end
  
  it "should have a password" do
    @user.password.should_not == ""
  end
end