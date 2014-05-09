class HomesController < ApplicationController
  before_filter :authenticate_user!, :only => [:history]
  
  def index
  end

  def about_us
  end

  def history
  end
end
