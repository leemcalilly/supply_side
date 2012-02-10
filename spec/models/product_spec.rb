require 'spec_helper'

describe Product do 
  before(:each) do
    @user = Factory(:user)
  end

  it "has a valid factory" do
    Factory(:product).should be_valid
  end
  
  it "should create a new instance given valid attributes" do
    product = @user.products.create(@product)
  end
  
  describe "user associations" do
    before(:each) do
      @product = @user.products.create(@product)
    end

    it "should have a user attribute" do
      @product.should respond_to(:user)
    end

    it "should have the right associated user" do
      @product.user_id.should == @user.id
      @product.user.should == @user
    end
    
    describe "when user_id is not present" do
      Factory.build(:product, :user => nil)
      it { should_not be_valid }
     end

    describe "when there is no name" do
      Factory.build(:product, :name => " ")
      it { should_not be_valid }
    end
  end
end