class Greeter
    def initialize(name = "World")
        @name = name
    end

    def say_hi
        puts "Hi #{@name}"
    end
end

greeter = Greeter.new("Lenny")
greeter.say_hi

# don't include ancestors
puts Greeter.instance_methods(false)

# check methods
puts Greeter.respond_to?("say_hi")
puts Greeter.respond_to?("to_s")
puts Greeter.respond_to?("name")

#open up class and modify it

class Greeter
    attr_accessor :name
end

greeter.name="Lenny"
puts Greeter.respond_to?("name")
puts greeter.name