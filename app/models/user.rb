class User < ActiveRecord::Base
  has_many :comments, :through => :breakouts
  has_many :signups, :through => :breakouts

  has_many :session_follows, foreign_key: :session_id, class_name: :Teacher
  has_many :sessions, through: :session_follows, source: :session

  has_many :instructor_follows, foreign_key: :instructor_id, class_name: :Teacher
  has_many :instructors, through: :instructor_follows, source: :instructor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
