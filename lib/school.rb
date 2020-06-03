# code here!
require "pry"
class School

attr_reader :school_name, :roster


    def initialize(school_name )
      @school_name = school_name
      @roster = {}
    end
    def add_student(name, grade)
        if roster.keys.include?(grade)
            roster[grade] << name
        else
            roster[grade] = Array.new
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
         end

         def sort
            
            roster.each do |grade, names|
                roster[grade] = names.sort
                binding.pry
            end
        end

end

