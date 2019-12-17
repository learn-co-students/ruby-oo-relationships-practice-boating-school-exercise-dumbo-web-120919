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

    def pass_student(student, boat_test)
    #should take in a student instance and test name. 
    #If there is a BoatingTest whose name and student match the values passed in, 
    #this method should update the status of that BoatingTest to 'passed'. 
    #If there is no matching test, this method should create a test with the student, 
    #that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
        found_test = BoatingTest.all.find do |test|
            test.student == student && test.boat_test == boat_test
        end
        if found_test
            found_test.status = "passed"
            found_test
        else
            BoatingTest.new(student, boat_test, "passed", self)
        end
    end 

    def fail_student(student, boat_test)
    #should take in a student instance and test name. 
    #Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. 
    #If it cannot find an existing BoatingTest, it should create one with the name, the matching student, 
    #and the status 'failed'.
        found_test = BoatingTest.all.find do |test|
            test.student == student && test.boat_test == boat_test
        end
        if found_test
            found_test.status = "failed"
            found_test
        else
            BoatingTest.new(student, boat_test, "failed", self)
        end
    end
end


