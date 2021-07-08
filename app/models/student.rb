class Student
    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end    

    def self.find_student(first_name)
        @@all.find {|student_object| student_object.first_name == first_name}
    end

    def grade_percentage
        #take BoatingTest class, find all the tests from this student
        student_tests = BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
        #count the number of tests from this student (&& convert to float number)
        total_tests = student_tests.length.to_f
        #take the student_tests array, find all the tests this student passed, save to total_passed array
        total_passed = student_tests.find_all{|test| test.test_status == "passed"}
        #count the number of passed tests from this student
        num_passed = total_passed.length.to_f
        # divide the number of ALL tests by the number of PASSED tests
        percent = (num_passed/total_tests)*100
    end

    def self.all
        @@all
    end

end

# Student#grade_percentage should return the percentage of tests that the student has passed, a Float 
# (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)