class Student < ActiveRecord::Base
  has_many :course_student
  has_many :courses, through: :course_student
end
