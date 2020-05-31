# code here!
require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = Hash.new

    end

    def roster
        @roster
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
        end
    end


end