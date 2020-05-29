class School
    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        unless @roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade].push(student)
        else
            @roster[grade].push(student)
        end
    end

    def grade(target)
        @roster[target]
    end

    def sort
       @roster.each do |grades, students|
        @roster[grades] = students.sort
       end
    end
end