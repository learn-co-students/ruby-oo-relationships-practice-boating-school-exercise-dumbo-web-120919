class BoatingTest
    attr_accessor :student, :name, :status, :instructor

    @@all = []

    def initialize(student, name, status, instructor)
        @student = student
        @name = name
        @status = status
        @instructor = instructor 
        @@all << self
    end

    def self.all 
        @@all 
    end
end

#This is the class that connects both student class and instructor class



# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String),
#   a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests