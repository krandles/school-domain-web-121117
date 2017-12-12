class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade_num)
    if !@roster[grade_num]
      @roster[grade_num] = [student_name]
    else
      @roster[grade_num] << student_name
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    result = {}
    @roster.each do |grade, students|
      result[grade] = students.sort!
    end
  end

end