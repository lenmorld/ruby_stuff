launch a Ruby interpreter

`$irb`

### Classes

- get all class methods

`dog = Dog.new`

`Dog.instance_methods`  

`Dog.instance_methods(false)`   # exclude inherited

`dog.respond_to?("say_hi")`


In Ruby, you can open a class up again and modify it


### Lists

- check if a list

`@names.respond_to?("each")`

```
@names.each do |name|
  puts "Hello #{name}!"
end
```

internally, each method `yield`s each element
