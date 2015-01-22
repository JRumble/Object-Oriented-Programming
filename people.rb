#people.rb

class Person
  attr_accessor = :name

  def initialize(name)
      @name = name
  end

  def greeting
    puts "Hi my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

person = Person.new("Cristina")
person.greeting

student = Student.new("Bob")
student.learn
#student.teach this won't work because the teach method isn't contained in the student class


class Instructor < Person
  def teach
    puts "Everything in Ruby is an object."
  end
end

person = Person.new("Chris")
person.greeting
instructor = Instructor.new("Sue")
instructor.teach 