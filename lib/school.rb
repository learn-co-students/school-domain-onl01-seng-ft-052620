# code here!
require "pry"

class School
    
    def initialize(school)
        @school = school
        @roster = {}
        
    end
    def roster 
        @roster
    end

    def add_student(name, grade)
        unless @roster.has_key?(grade)
          @roster[grade] = []
        end
        @roster[grade] << name
    end
    
    def grade(number)
        @roster[number]
    end

    def sort 
         @roster.keys.sort.map! do |i|
             @roster[i] = @roster[i].sort
         end
        @roster
    end
end