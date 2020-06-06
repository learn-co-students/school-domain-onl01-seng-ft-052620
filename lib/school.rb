class School
 attr_reader :roster

 def initialize(name)
  @roster = {}
 end
 
 def add_student(name, grade)
 
   @roster[grade] ||=  []
   @roster[grade] << name 
 end 
  
  def grade(number)
    roster[number]
  end
 
  def sort 
  new_hash = {}
  roster.keys.sort.each do |number|
    new_hash[number] = roster[number].sort 
 end
   new_hash
 end 
end 
