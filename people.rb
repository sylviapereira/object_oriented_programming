class Person
  attr_accessor = :person_name

  def initialize(person_name)
    @person_name = person_name
  end

  def greeting(person_name)
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

chris.greeting(@person_name)
chris.teach
