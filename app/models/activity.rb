class Activity < ActiveRecord::Base
  has_many :comments
  has_many :interests
end
