class Student
    attr_reader :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
    #create new BoatingTest instance
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
    #search for and return student
    def self.find_student(search_name)
        Student.all.find(search_name)
    end
    # returns percentage of tests student passed
    def grade_percentage
        student_tests = BoatingTest.all.select{|test| test.student == self}
        passing_tests = student_tests.select{|test| test.test_status == "passed"}
        passing_tests.length.to_f / student_tests.length.to_f
    end
end