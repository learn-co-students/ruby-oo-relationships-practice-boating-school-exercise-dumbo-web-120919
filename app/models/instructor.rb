class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def test_exists?(student, name)
        student.tests.any?{|test| test.test_name == name}
    end

    def find_student_test_by_name(student, name)
        student.tests.find{|test| test.test_name == name}
    end

    def pass_student(student, test_name)
        if self.test_exists?(student, test_name)
            test  = find_student_test_by_name(student, test_name)
            test.status  = "passed"
            return test
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        if self.test_exists?(student, test_name)
            test  = find_student_test_by_name(student, test_name)
            test.status  = "failed"
            return test
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

    def self.all
        @@all
    end 
end
