class BoatingTest

    attr_accessor :test_status
    attr_reader :test_name, :student, :instructor

    @@all = []

    def initialize(test_name, test_status, student, instructor)
        @test_name = test_name
        @test_status = test_status
        @student = student
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
