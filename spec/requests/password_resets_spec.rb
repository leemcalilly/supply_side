require 'spec_helper'

describe "PasswordReset" do
  it "emails user when requesting a password reset" do
    user = Factory(:user)
    visit login_path
    click_link "Forgot your password?"
    fill_in "Email", :with => user.email
    click_button "Reset Password"
    current_path == "/"
    page.should have_content("Email sent")
    last_email.to.should include(user.email)
  end
end