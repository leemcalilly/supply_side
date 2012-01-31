require 'spec_helper'

describe "PasswordResets" do
  
  it "successfully routes to the recover password page" do
    visit recover_password_path
    current_path == "/recover "
  end
  
end
