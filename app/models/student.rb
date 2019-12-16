class Student

    attr_accessor :name
    
    @@all = []

    def initialize(first_name)
        @first_name = first_name
       
        @@all << self
    end

    def add_boating_test
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(student_name)
        self.all.find {|n| n.first_name == student_name}
    end

    def 

    end
    
    def self.all
        @@all
    end
end
