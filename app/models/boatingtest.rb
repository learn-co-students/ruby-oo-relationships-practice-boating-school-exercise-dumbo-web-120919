class BoatingTest

    @@all = []

    attr_reader :student, :test_name, :instructor
    attr_accessor :status
    
    def initialize(student, test_name, status, instructor)
        @student = student
        @status = status
        @test_name = test_name
        @instructor = instructor

        @@all << self
    end


    def self.all
        @@all
    end 
end
