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

    def add_boating_test(boat_test, status, instructor)
        BoatingTest.new(self, boat_test, status, instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.name == name
        end
    end

    def grade_percentage
    #should return the percentage of tests that the student has passed, 
    #a Float (so if a student has passed 3 / 9 tests that they've taken, 
    #this method should return the Float 33.33)
        tests_passed = 0.00
        student_tests = BoatingTest.all.select do |test|
            test.student == self 
        end
        student_tests.map do |test|
            if test.status == "passed"
                tests_passed += 1
            end
        end
        (tests_passed / student_tests.length) * 100 
    end
end


