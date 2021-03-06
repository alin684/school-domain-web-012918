class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
   if @roster[grade]
      @roster[grade] << name
   else
      @roster[grade] = []
      @roster[grade] << name
   end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = {}
    @roster.each do |grade, name|
      @sorted_roster[grade] = []
      @sorted_roster[grade] = name.sort
    end
    @sorted_roster
  end
end
