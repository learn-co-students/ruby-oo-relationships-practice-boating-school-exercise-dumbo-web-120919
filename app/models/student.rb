class Student

    attr_reader :name

    @@all = []

    def initialize(name)    # WORKS #
        @name = name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)    # WORKS #
        BoatingTest.new(test_name, test_status, self, instructor)
    end

    def find_student_tests  # WORKS #
        BoatingTest.all.select { |test| test.student == self }
    end

    def grade_percentage    # WORKS #
        tests_taken = self.find_student_tests
        passed = tests_taken.select { |test| test.test_status == "passed" }
        percentage = (passed.length.to_f / tests_taken.length.to_f)
        percentage
    end

    def self.all    # WORKS #
        @@all
    end

end
