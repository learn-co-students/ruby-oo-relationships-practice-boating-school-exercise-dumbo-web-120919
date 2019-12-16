class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    #if there is a test with name and student, change status to passed else create new instance
    def pass_student(student, search_name)
        if BoatingTest.all.find{|test| test.student == student && test.test_name == search_name}
            BoatingTest.all.find{|test| test.student == student && test.test_name == search_name}.status = "passed"
        else
            BoatingTest.new(student, search_name, "passed", self)
        end
    end
    def fail_student(student, search_name)
        if BoatingTest.all.find{|test| test.student == student && test.test_name == search_name}
            BoatingTest.all.find{|test| test.student == student && test.test_name == search_name}.status = "failed"
        else
            BoatingTest.new(student, search_name, "failed", self)
        end
    end
end