class User < ActiveRecord::Base
  has_many :comments
  has_many :interests
  has_many :users #friends
end
