class Teacher < ActiveRecord::Base
  belongs_to :session, foreign_key: :session_id, class_name: :Breakout
  belongs_to :instructor, :class_name => 'User'
end
