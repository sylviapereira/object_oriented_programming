class Person
  attr_accessor = :person_name

  def initialize(person_name)
    @person_name = person_name
  end

  def greeting
   puts "Hi, my name is #{@person_name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

chris = Instructor.new("Chris")
chris.greeting
chris.teach

cristina = Student.new("Cristina")
cristina.greeting
cristina.learn

#cristina.teach
#This cannot be called because the "student" and "instructor classes are
# next to each other on the hierarchy, one does not refer to the other."
