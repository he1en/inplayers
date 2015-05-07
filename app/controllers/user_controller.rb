class UserController < ApplicationController
  def index
    @activities = []
    (0...15).each do |x|
      act = {}
      act[:name] = "Activity " + x.to_s
      act[:cost] = rand(2000)
      @activities << act
    end
    render(:action=>:bookmarked)
  end

  def bookmarked
  end
end
