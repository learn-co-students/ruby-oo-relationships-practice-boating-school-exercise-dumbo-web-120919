class Student
    attr_accessor :first_name, :last_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
        # we were asked to initialize a first_name 
        # we add @@all and have self shoveled into @@all to put it in an array
    end

    def self.all
        @@all
        # with @@all, we are able to access the class database of Student
        # it returns all of the student instances
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
        # Our domain is Student -< BoatingTest >- Instructor, due to our domain
        # we must initialize all test through BoatingTest
        # It'll take in four arguments but we can leave it at 3 instead of 4
        # because we are in the student class and can use self to access the students
    end

    def self.find_student(student_first_name)
        self.all.find { |student| student.first_name == student_first_name}
        #  ^ find all students         ^ the class instance   ^ argument 
        # Will take an argument of the student's first_name and will find
        # the student inside the @@all variable
    end

    def grade_percentage
        studentTests = BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
        # assigned a new variable to BoatingTest, use the find_all to get all the students
        # who took the test
        totalTests = studentTests.length.to_f
        # to_f changes an integar into a float
        totalPassed = studentTests.find_all{|test| test.status == "passed"}
        # finds all the students that have passed the test 
        numPassed = totalPassed.length.to_f
        percent= (numPassed/totalTests)*100
        # fufills the requirement to get the percentage from dividing 
        # number of students who passed / all students that took the test
        
    end

end


# `Student` class:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a 
#   Student (Object), a boating test name (String), a boating test status 
#   (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student
#    (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the 
#   student has passed, a Float (so if a student has passed 3 / 9 tests that 
#   they've taken, this method should return the Float `33.33`)