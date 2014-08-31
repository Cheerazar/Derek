class Teacher < ActiveRecord::Base
  belongs_to :user
  belongs_to :instructor, :class_name => 'User'
end
