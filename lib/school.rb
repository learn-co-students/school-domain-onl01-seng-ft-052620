require "pry"

class School
  attr_accessor :name, :roster
  attr_writer :grade


def initialize(name)
@name = name
@roster = {}
end

def add_student(name, grade)
  # binding.pry
  @roster[grade] ||= []
  @roster[grade] << name
end


def grade(num)
  @roster[num]
end

def sort
  new_hash= {}
  
  roster.keys.sort.each do |grade|
    new_hash[grade] = roster[grade].sort
   end 
 new_hash
 end 
end 

school = School.new("Bayside High School") 
