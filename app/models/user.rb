class User < ActiveRecord::Base
  has_many :breakouts
  has_many :comments
  has_many :signups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
