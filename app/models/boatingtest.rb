class BoatingTest
    attr_reader :student, :instructor, :test_name
    attr_accessor :status

    @@all = []

    def initialize(test_name,student,instructor,status)
        @test_name = test_name
        @student = student
        @instructor = instructor
        @status = status

        @@all <<self
    end

    def self.all
        @@all
    end
end

# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), 
#a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests