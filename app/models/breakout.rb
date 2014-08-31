class Breakout < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :through => :users
  has_many :signups, :through => :users
end
