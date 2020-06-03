# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        if @roster.include?(grade) == false
            @roster[grade] = []
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end 