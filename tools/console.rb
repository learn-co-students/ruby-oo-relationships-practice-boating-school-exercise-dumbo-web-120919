require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#student_list-def initialize(first_name)
s1 = Student.new("Jane")
s2 = Student.new("James")
s3 = Student.new("April")
s4 = Student.new("Amy")

#instructor_list-def initialize(name)
i1 = Instructor.new("Mr. Roberts")
i2 = Instructor.new("Mr. Thomas")
i3 = Instructor.new("Dave Hasslehoff")

#Boating_class_setup



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

