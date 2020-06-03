

class School
attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade] != nil
        @roster[grade] << student
        else
        @roster[grade] = [] 
        @roster[grade] << student
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, student_array|
            @roster[grade].sort!
        end
        @roster
    end
end