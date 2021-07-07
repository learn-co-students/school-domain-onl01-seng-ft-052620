class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
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

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
       @roster.each do |grades, students|
        sorted[grades] = students.sort
       end
       sorted
    end
end