# code here!


class School

    

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade] << name
        else
                
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        
        roster.each_key do |grade|
            
            roster[grade] = roster[grade].sort
            
        end
        roster
        
        
        
    end
end