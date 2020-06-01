class School

    attr_accessor :name,:roster

    def initialize(name)
        @name = name
        @roster = Hash.new {|hash, key| hash[key] = []}
    end
    
    def add_student(student,grade)
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort()
        rtn = {}
        @roster.each do |grade,students|
            rtn[grade] = students.sort
        end
        rtn
    end
end