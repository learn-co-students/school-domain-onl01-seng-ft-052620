class School
	attr_reader :roster, :name

	def initialize(name)
		@roster = {}
		@name = name
	end

	def add_student(name, grade)
		@roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		# sorted_roster = {}
		# @roster.each do |grade, name_list|
		# 	sorted_roster[grade] = name_list.sort
		# end
		# sorted_roster

		@roster.map{|grade_names| [grade_names[0], grade_names[1].sort]}.to_h
	end
end