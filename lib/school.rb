# code here!
class School

    def roster
        @roster
    end

    def add_student(student_name,grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student_name 
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade,students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end

    def initialize(school_name)
        @roster = {}
        @school = school_name
    end
end 