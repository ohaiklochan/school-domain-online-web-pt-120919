# code here!

class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_a_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    hash = {}
    @roster.each do |key, value|
      value.sort!
    end
  end
end

#school = School.new("Bayside High School")
#school.roster
#school.add_student("Zach Morris", 9)
#school.add_student("Moshe Zeus", 9)
#school.add_student("Onkelos Octavius", 9)
#school.roster
#school.add_student("Sugar Zaza", 5)
#school.roster
#school.add_student("Theo Madus", 5)
#school.add_student("Abbah Zabbah", 2)
#school.roster
#school.grade(9)
#school.sort