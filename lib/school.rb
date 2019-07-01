class School
  attr_accessor :roster
  def initialize(name)
    roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade,students|
      @roster[grade].sort!
    end
  end
end