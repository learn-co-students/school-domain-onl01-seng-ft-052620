class School
    
    # attr_accessor :author
    attr_reader :school_name, :roster
  
  
    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end
  
    def add_student(student_name, grade)
        @roster[grade] = [] if not @roster.keys.include?(grade)
        @roster[grade] << student_name
    end
  
    def grade(num)
      @roster[num]
    end
    
    def sort
      @roster.each do |grade, names|
        @roster[grade].sort!
      end
      @roster
    end

  end