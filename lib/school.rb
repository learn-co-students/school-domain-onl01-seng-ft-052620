class School
  attr_accessor :roster

  def initialize(phil)
    @roster = {} 
  end 
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end 
  
  def grade(num)
    @roster[num]
  end 
  
  def sort 
    hash = {}
      @roster.keys.sort.each do |students|
        hash[students] = @roster[students].sort
    end
    hash
  end 
end 