class School
attr_accessor :name, :roster
  
def initialize(name)
    @name = name
    @roster = {}
end
  
def add_student(name,grade)
  if self.roster.include?(grade)
      self.roster[grade] << name
 else 
      self.roster[grade] = [name]
  end
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each do |grade|
    grade[1].sort!
  end

roster
end

end
