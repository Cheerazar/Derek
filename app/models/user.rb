class User < ActiveRecord::Base
  has_many :breakouts
  has_many :comments, :through => :breakouts
  has_many :signups, :through => :breakouts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
