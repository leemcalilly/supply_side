require 'spec_helper'

describe Product do 
  before(:each) do
    product = Factory(:product)    
  end

  it "has a valid factory" do
    Factory(:product).should be_valid
  end
  
  it "should create a new instance given valid attributes" do
     Product.create!(@product)
    end
end