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
    end

    def self.all
        @@all
    end

end

# Student#grade_percentage should return the percentage of tests that the student has passed, a Float 
# (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)