class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def add_boating_test (test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def tests
        BoatingTest.all.select{|test| test.student == self}
    end


    def grade_percentage
        (tests.count{|test| (test.status == "passed")}.to_f / tests.length) * 100
    end

    def self.Student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def self.all
        @@all
    end 
end
