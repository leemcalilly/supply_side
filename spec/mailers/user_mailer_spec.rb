require "spec_helper"

describe UserMailer do
  describe "password_reset" do
    let(:user) { Factory(:user) }
    let(:mail) { UserMailer.reset_password_email(user) }

    it "sends user password reset url" do
      mail.subject.should eq("Reset Your Password | Supply Side")
      mail.to.should eq([user.email])
      mail.from.should eq(["leemcalilly@gmail.com"])
    end

    it "renders the body" do
       mail.body.encoded.should match("You have requested to reset your password on Supply Side.")
    end
  end
end