launch a Ruby interpreter

`$irb`

### Classes

- get all class methods

`dog = Dog.new`

`Dog.instance_methods`  

`Dog.instance_methods(false)`   # exclude inherited

`dog.respond_to?("say_hi")`


In Ruby, you can open a class up again and modify it

`dog.inspect`
- effectively prints all methods, attributes
implemented on every object you'll encounter. It will return a string representation of the object.


### Lists

- check if a list

`@names.respond_to?("each")`

```
@names.each do |name|
  puts "Hello #{name}!"
end
```

internally, each method `yield`s each element


### Projects

```
sample_proj/
  Gemfile       # deps
  Gemfile.lock
```

`$gem install <package>`  # install package

OR

add in Gemfile
`gem 'unsplash'`
`$ bundle`
