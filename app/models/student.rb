class Student
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test
        BoatingTest.new(test_name,self,teacher,status)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.name == name
        end
    end

    def boating_tests        
        BoatingTest.all.select{|boating_test| boating_test.student == self}
    end

    def total_tests
        boating_tests.length.to_f
    end

    def passed
        boating_tests.select{ |test| test.status == "pass"}
    end

    def grade_percentage

        numPassed = passed.length.to_f

        percent = (numPassed/total_tests)*100
        #get the number of test this student took
        #get the number of tests passed
        #find percentage by dividing passed over total
    end
end
# `Student` class:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), 
# a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float 
#(so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)