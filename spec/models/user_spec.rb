require 'spec_helper'

describe User do
  before(:each) do
    @user = Factory(:user, :email => "test@example.com")
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
  
  describe "product associations" do
    before { @user.save }
      let!(:older_product) do 
        Factory.create(:product, user: @user, created_at: 1.day.ago)
    end
      let!(:newer_product) do
        Factory.create(:product, user: @user, created_at: 1.hour.ago)
    end
    
    it "should have a product attribute" do
      @user.should respond_to(:products)
    end
    
    it "should destroy associated products" do
      products = @user.products
      @user.destroy
      [older_product, newer_product].each do |product|
        Product.find_by_id(product.id).should be_nil
      end
    end
  end      
end