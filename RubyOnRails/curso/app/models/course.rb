class Course < ActiveRecord::Base
  has_many :course_student
  has_many :students, through: :course_student
end
