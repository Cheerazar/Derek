class Breakout < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :users, :through => :comments
  has_many :signups, :through => :users
end
