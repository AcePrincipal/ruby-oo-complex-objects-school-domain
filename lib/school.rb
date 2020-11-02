# code here!
class School
    attr_accessor :name, :roster
    attr_writer :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster[grade] == nil
            self.roster[grade] = []
        end

        self.roster[grade] << name  
    end

    def grade(num)
        return self.roster[num]
    end

    def sort
        self.roster.each do |grade, student_arr|
            student_arr.sort!
        end
    end
end