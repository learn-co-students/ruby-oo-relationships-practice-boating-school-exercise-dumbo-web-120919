class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student_object, test_name)
        #BoatingTest.new(student, test_name, test_status, instructor)
        BoatingTest.all.each do |test_object|
            if test_object.student == student_object && test_object.test_name == test_name
                test_object.test_status = "passed"
            else
                new_test = BoatingTest.new(student_object, test_name, "passed", self)
                return new_test
            end
        end
    end

    def fail_student(student_object, test_name)
        BoatingTest.all.each do |test_object|
            if test_object.student == student_object && test_object.test_name == test_name
                test_object.test_status = "failed"
            else
                new_test = BoatingTest.new(student_object, test_name, "failed", self)
                return new_test
            end
        end
    end

    def self.all
        @@all
    end

end

# Instructor#fail_student should take in a student instance and test name. 
# Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. 
# If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
