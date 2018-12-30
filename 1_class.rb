class Greeter
  def initialize(name = "World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}!"
  end
end

greeter = Greeter.new("Lenny")
greeter.say_hi

greeter.respond_to? ("name")    # false

# In Ruby, you can open a class up again and modify it

class Greeter
  # add a setter+getter for @name
  attr_accessor :name
end

greeter.respond_to? ("name")    # true

greeter.name = "Tammy"
greeter.say_hi    # Tammy

greeter2 = Greeter.new("Jimmy")
greeter2.say_bye
