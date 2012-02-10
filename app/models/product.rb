class Product < ActiveRecord::Base
  attr_accessible :name, :description
  
  belongs_to :user
  
  validates_presence_of :user_id
  validates_presence_of :name
  
end
