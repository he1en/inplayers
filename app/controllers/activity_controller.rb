class ActivityController < ApplicationController
  def index
  	@activities = Activity.all
    render(:action=>:bookmarked);
  end

  def show
  	@activity = Activity.find_by_id(params[:id])
  end

  def bookmarked
  	
  end
end
