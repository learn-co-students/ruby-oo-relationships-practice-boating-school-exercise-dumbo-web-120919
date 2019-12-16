require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Jerry")
s2 = Student.new("Monica")
s3 = Student.new("Rachel")

i1 = Instructor.new("Mrs. Faith")
i2 = Instructor.new("Mr. Charles")
#BoatingTest.new(test_name,student,teacher,status)
b1 = BoatingTest.new("one", s1, i1, "pass")
b2 = BoatingTest.new("two", s2, i2, "fail")
b3 = BoatingTest.new("two", s3, i1, "pass")
b4 = BoatingTest.new("one", s3, i2, "fail")
b5 = BoatingTest.new("two", s1, i2, "pass")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

