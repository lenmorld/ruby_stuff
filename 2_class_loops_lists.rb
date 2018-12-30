#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts ("...")
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end


  def say_bye
    # Duck typing
    # - not caring about the type of the variable
    # just relying on what methods it supports
    # it could be anything that supports the 'join' method

    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Bye #{@names.join(", ")}!"
    else
      puts "Bye #{@names}"
    end
  end
end

# run file if passed as arg
puts("Current filename: #{__FILE__}")
puts("Filename passed: #{$0}")

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = "Lenny"
  mg.say_hi
  mg.say_bye

  mg.names = ["Jimmy", "Albert", "Nick"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye

end
