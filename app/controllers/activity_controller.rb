class ActivityController < ApplicationController
  def index
  	@activities = Activity.all
    render(:action=>:bookmarked);
  end

  def show
  end

  def bookmarked
  	
  end
end
