class Instructor
    
    attr_reader :name 

    @@all = []

    def initialize(name)    # WORKS #
        @name = name
        @@all << self
    end

    def find_test(test_name, student)   # WORKS #
        matched_names = BoatingTest.all.select { |test| test.test_name == test_name }
        matched_students = BoatingTest.all.select { |test| test.student == student }

        matched_names & matched_students
    end

    def pass_student(test_name, student)    # WORKS #
        matched_test = find_test(test_name, student)
        if matched_test.length > 0
            matched_test[0].test_status = "passed"
            matched_test
        else
            BoatingTest.new(test_name, "passed", student, self)
        end
    end

    def fail_student(test_name, student)    # WORKS #
        matched_test = find_test(test_name, student)
        if matched_test.length > 0
            matched_test[0].test_status = "failed"
            matched_test
        else
            BoatingTest.new(test_name, "failed", student, self)
        end
    end

    def self.all    # WORKS #
        @@all
    end

end
