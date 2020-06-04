require "pry"

class School
  attr_accessor :name, :roster, :grade
  
  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
        @grade = grade
  end

  def grade(grade)
    @roster[grade]
  end

  # def sort
  #   sorted = {}
  #   @roster.each do |grade, student|
  #     sorted[grade] = student.sort
  #   end
  #   sorted
  # end
  
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end 

end