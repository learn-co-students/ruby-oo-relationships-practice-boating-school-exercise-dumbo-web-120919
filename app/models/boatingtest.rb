class BoatingTest
    attr_reader :student, :boat_test, :instructor
    attr_accessor :status

    @@all = []

    def initialize(student, boat_test, status, instructor)
        @student = student
        @boat_test = boat_test
        @status = status
        @instructor = instructor

        @@all << self
    end

    def self.all
        @@all 
    end
end

