require 'spec_helper'

describe "PasswordReset" do
  
  it "successfully routes to the recover password page" do
    visit recover_password_path
    current_path == "/recover "
  end
  
  it "emails user when requesting a password reset" do
    
  end
  
end
