class PagesController < ApplicationController
  protect_from_forgery
  before_filter :require_login, :only => :secret
  
  def home
  end
  
  def secret
  end
  
end