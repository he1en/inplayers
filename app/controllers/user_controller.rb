class UserController < ApplicationController
  def index
    render(:action=>:bookmarked);
  end

  def bookmarked
  end
end
