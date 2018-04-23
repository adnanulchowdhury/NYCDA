require './reportcard'
class Student
  attr_accessor :reportcard
  attr_accessor :name
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
    @reportcard = Reportcard.new
  end
end
