class Table

end
Class
puts Table.class
print Table.methods

puts Table.hash
class Table

end
Instance
a_table = Table.new

puts a_table.class
print a_table.methods

puts a_table.hash
Factory Metaphor
a_table = Table.new
Instance Methods
class Table
  def put_on(something)
      [] << something
  end

  def look_at
      []
  end
end
Instance Methods
a_table = Table.new
a_table.put_on 1
puts a_table.look_at
def put_on(something)
    tabletop = []
    tabletop << something
end

def look_at
    tabletop
end
Instance Methods
a_table = Table.new
a_table.put_on 1
puts a_table.look_at
Instance Variable
def put_on(something)
    tabletop = []
    tabletop << something
end

def look_at
    tabletop
end
Instance Variable
def put_on(something)
    @tabletop = []
    @tabletop << something
end

def look_at
    @tabletop
end
Instance Variable
a_table = Table.new
a_table.put_on 1
puts a_table.look_at
Initialize
a_table = Table.new
a_table.put_on 1
puts a_table.look_at

a_table.put_on 2
puts a_table.look_at
Initialize
class Table
    def put_on(something)
        @tabletop = []
        @tabletop << something
    end

    def look_at
        @tabletop
    end
end
Initialize
class Table
    def initialize
        @tabletop = []
    end

    def put_on(something)
        @tabletop << something
    end

etc…

Initialize
a_table = Table.new
a_table.put_on 1
a_table.put_on 2

puts a_table.look_at
class Table
  def initialize
    @tabletop = []
    @num_legs = ?
  end
end
class Table
    def initialize(num_legs)
        @tabletop = []
        @num_legs = num_legs
    end
end
a_table = Table.new
wrong number of arguments (0 for 1)

a_table = Table.new 4
Attributes
a_table = Table.new 4

puts a_table.num_legs
undefined method 'num_legs'
Attributes
class Table
    def initialize(num_legs)
        @tabletop = []
        @num_legs = num_legs
    end

    def num_legs
        @num_legs
    end
end
Attributes
a_table = Table.new 4
puts a_table.num_legs
Attributes
class Table
    attr_reader :num_legs

    def initialize(num_legs)
        @tabletop = []
        @num_legs = num_legs
    end
end
Attributes
a_table = Table.new 4
puts a_table.num_legs

Attributes
def num_legs=(value)
  @num_legs=value
end

Can be written as:

attr_writer :num_legs
Attributes
a_table = Table.new 4
puts a_table.num_legs

a_table.num_legs = 1
puts a_table.num_legs

Attributes
attr_reader :num_legs
attr_writer :num_legs

Is the same as:

attr_accessor :num_legs
Class Scope
class Table
    def self.has_legs?
        true
    end
end
Class Scope
puts Table.has_legs?
Global Scope
$global = true
Global Variables
$:
  Where Ruby will look for files you require.
$0
  The name of the current Ruby file.
$_
  The last thing read by gets.
Inheritance
class Car
end

puts Car.class
print Car.methods

my_car = Car.new
puts my_car.class
print my_car.methods
Inheritance
print Car.ancestors

[Car, Object, Kernel, BasicObject]
class Car
  attr_accessor :engine
  attr_accessor :tires
end

class Motorcycle
  attr_accessor :engine
  attr_accessor :tires
end
#```ruby

Inheritance
class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle
end

class Motorcycle < Vehicle
end
Inheritance
print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass
Inheritance
car = Car.new
puts car.engine

motorcycle = Motorcycle.new
puts motorcycle.engine
Mixins
module Talkative
  def speak
      puts "Hello world!"
  end
end

class Kitt < Car
    include Talkative
end
Mixins
print Kitt.ancestors
puts Kitt.superclass

kitt = Kitt.new
kitt.speak
Why OOP?
Thinking Functionally
def add(left, right)
  left + right
end
Thinking Functionally
def add(left, right)
  # if Strings, concat
  # else
  left + right
end
Thinking Functionally
def add(left, right)
  # if Strings, String.concat
  # if Arrays, Array.concat
  # if nils, error
  # else
  left + right
end
Thinking Functionally
def add(left, right)
  # if String, String.concat
  # if Array, Array.concat
  # if Nil or Hash, error
  # else
  left + right
end
Thinking Functionally
def add(left, right)
  # if String, String.concat
  # if Array, Array.concat
  # if Nil or Hash, error
  # If anything that’s not a number, error
  # else
  left + right
end
Thinking Functionally
def add(left, right)
  # if String, String.concat
  # if Array, Array.concat
  # if Nil or Hash, error
  # If anything that’s not a number, error
  # Unless it’s related to a number
  # Unless it knows how to add some other way.
  # else
  left + right
end
OOP Thinking
class Table
    attr_accessor :tabletop
    def initialize
        @tabletop = []
    end

    def add(item)
        @tabletop.push(item)
    end
end
OOP Thinking
table = Table.new
table.add(nil)
table.add({})
table.add([])
table.add(Table.new)
puts table.tabletop
OOP Thinking
Functional design:
add(something, something)
What if something is a Table?
OOP design:
object.add(something)
Does this object care if something is a Table?
Ruby Syntax

subject.method(argument, argument)

object.method(argument, argument)






















#
