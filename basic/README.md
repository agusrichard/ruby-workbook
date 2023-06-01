# Ruby Basic

<br />

## List of Contents:
### 1. [Syntax](#content-1)
### 2. [Class and Object](#content-2)
### 3. [Variables](#content-3)
### 4. [Operators](#content-4)
### 5. [Comments](#content-5)
### 6. [If... Else... Case](#content-6)
### 7. [Loops](#content-7)
### 8. [Methods](#content-8)
### 9. [Blocks](#content-9)
### 10. [Modules and Mixins](#content-10)
### 11. [Strings](#content-11)
### 12. [Arrays](#content-12)
### 13. [Hashes](#content-13)
### 14. [Date and Time](#content-14)

<br />

---

## Contents:

## [Syntax](#list-of-contents) <span id="content-1"></span>
- Whitespace characters such as spaces and tabs are generally ignored in Ruby code, except when they appear in strings.
- Sometimes, however, they are used to interpret ambiguous statements. Interpretations of this sort produce warnings when the -w option is enabled.
  ```text
  a + b is interpreted as a+b ( Here a is a local variable)
  a  +b is interpreted as a(+b) ( Here a is a method call)
  ```
- Ruby interprets semicolons and newline characters as the ending of a statement. However, if Ruby encounters operators, such as +, −, or backslash at the end of a line, they indicate the continuation of a statement.
- Identifiers are names of variables, constants, and methods. Ruby identifiers are case sensitive. It means Ram and RAM are two different identifiers in Ruby.
- Ruby identifier names may consist of alphanumeric characters and the underscore character ( _ ).
- Here is document:
  ```ruby
  print <<EOF
     This is the first way of creating
     here document ie. multiple line string.
  EOF

  print <<"EOF";                # same as above
     This is the second way of creating
     here document ie. multiple line string.
  EOF

  print <<`EOC`                 # execute commands
    echo hi there
    echo lo there
  EOC

  print <<"foo", <<"bar"  # you can stack them
    I said foo.
  foo
    I said bar.
  bar
  ```
- BEGIN: Declares code to be called before the program is run.
  ```text
  BEGIN {

  }
  ```
- END: Declares code to be called at the end of the program.
  ```text
  END {
     code
  }
  ```
- Comments in Ruby:
```ruby
# This is a comment.
# This is a comment, too.
# This is a comment, too.
# I said that already.

=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end
```

## [Class and Object](#list-of-contents) <span id="content-2"></span>
- Example:
  ```ruby
  Class Vehicle {

     Number no_of_wheels
     Number horsepower
     Characters type_of_tank
     Number Capacity
     Function speeding {
     }
     
     Function driving {
     }
     
     Function halting {
     }
  }
  ```
- Variables in a Ruby Class
  - Local Variables − Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more details about method in subsequent chapter. Local variables begin with a lowercase letter or _.
  - Instance Variables − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.
  - Class Variables − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.
  - Global Variables − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).
- Creating Objects in Ruby using new Method
  ```ruby
  cust1 = Customer. new
  cust2 = Customer. new
  ```
- Custom Method to Create Ruby Objects
  ```ruby
  class Customer
     @@no_of_customers = 0
     def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
     end
  end
  
  cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
  cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
  ```
- Methods:
  - Example:
    ```ruby
    class Sample
    def hello
    puts "Hello Ruby!"
    end
    end

    # Now using above class to create objects
    object = Sample. new
    object.hello
    ```

## [Variables](#list-of-contents) <span id="content-3"></span>

### Global Variables
- Global variables begin with $. Uninitialized global variables have the value nil and produce warnings with the -w option.
- It's not recommended to use global variables.
- Snippet:
  ```ruby
  #!/usr/bin/ruby

  $global_variable = 10
  class Class1
     def print_global
        puts "Global variable in Class1 is #$global_variable"
     end
  end
  class Class2
     def print_global
        puts "Global variable in Class2 is #$global_variable"
     end
  end

  class1obj = Class1.new
  class1obj.print_global
  class2obj = Class2.new
  class2obj.print_global
  ```

### Instance Variables
- Instance variables begin with @.
- Uninitialized instance variables have the value nil and produce warnings with the -w option.
- Snippet:
  ```ruby
  #!/usr/bin/ruby

  class Customer
     def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
     end
     def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
     end
  end

  # Create Objects
  cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
  cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

  # Call Methods
  cust1.display_details()
  cust2.display_details()
  ```
  
### Class Variables
- Class variables begin with @@ and must be initialized before they can be used in method definitions.
- Referencing an uninitialized class variable produces an error. Class variables are shared among descendants of the class or module in which the class variables are defined.
- Overriding class variables produce warnings with the -w option.
- Snippet:
  ```ruby
  class Customer
     @@no_of_customers = 0
     def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
     end
     def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
     end
     def total_no_of_customers()
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
     end
  end

  # Create Objects
  cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
  cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

  # Call Methods
  cust1.total_no_of_customers()
  cust2.total_no_of_customers()
  ```
### Local Variables
- Local variables begin with a lowercase letter or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
- When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.
- Assignment to uninitialized local variables also serves as variable declaration. The variables start to exist until the end of the current scope is reached. The lifetime of local variables is determined when Ruby parses the program.

### Constants
- Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.
- Constants may not be defined within methods. Referencing an uninitialized constant produces an error. Making an assignment to a constant that is already initialized produces a warning.
- Snippet:
  ```rubu
  #!/usr/bin/ruby

  class Example
     VAR1 = 100
     VAR2 = 200
     def show
        puts "Value of first Constant is #{VAR1}"
        puts "Value of second Constant is #{VAR2}"
     end
  end

  # Create Objects
  object = Example.new()
  object.show
  ```

### Pseudo-Variables
- They are special variables that have the appearance of local variables but behave like constants. You cannot assign any value to these variables.


## [Operators](#list-of-contents) <span id="content-4"></span>

- Snippet:
  ```ruby
  a, b, c = 10, 20, 30
  a, b = b, c
  ```
- Ruby Ternary Operators:
```text
If Condition is true ? Then value X : Otherwise value Y
```
- Ruby defined? Operators
  ```ruby
  foo = 42
  defined? foo    # => "local-variable"
  defined? $_     # => "global-variable"
  defined? bar    # => nil (undefined)
  ```

### Ruby Dot "." and Double Colon "::" Operators
- Snippet
  ```ruby
  MR_COUNT = 0         # constant defined on main Object class
  module Foo
     MR_COUNT = 0
     ::MR_COUNT = 1    # set global count to 1
     MR_COUNT = 2      # set local count to 2
  end
  puts MR_COUNT        # this is the global constant
  puts Foo::MR_COUNT   # this is the local "Foo" constant
  ```
- Snippet:
  ```ruby
  CONST = ' out there'
  class Inside_one
     CONST = proc {' in there'}
     def where_is_my_CONST
        ::CONST + ' inside one'
     end
  end
  class Inside_two
     CONST = ' inside two'
     def where_is_my_CONST
        CONST
     end
  end
  puts Inside_one.new.where_is_my_CONST
  puts Inside_two.new.where_is_my_CONST
  puts Object::CONST + Inside_two::CONST
  puts Inside_two::CONST + CONST
  puts Inside_one::CONST
  puts Inside_one::CONST.call + Inside_two::CONST
  ```

## [Comments](#list-of-contents) <span id="content-5"></span>
- Multiline Comments:
  ```ruby
  puts "Hello, Ruby!"

  =begin
  This is a multiline comment and con spwan as many lines as you
  like. But =begin and =end should come in the first line only. 
  =end
  ```

## [ if...else, case, unless](#list-of-contents) <span id="content-6"></span>
- If else:
  ```rubu
  x = 1
  if x > 2
     puts "x is greater than 2"
  elsif x <= 2 and x!=0
     puts "x is 1"
  else
     puts "I can't guess the number"
  end 
  ```
- If modifier:
  ```ruby
  $debug = 1
  print "debug\n" if $debug
  ``` 
- Unless statement:
  ```ruby
  x = 1 
  unless x>=2
     puts "x is less than 2"
   else
     puts "x is greater than 2"
  end``
  ```
- Unless modifier
  ```ruby
  $var =  1
  print "1 -- Value is set\n" if $var
  print "2 -- Value is set\n" unless $var

  $var = false
  print "3 -- Value is set\n" unless $var
  ```
- Case statement
  ```ruby
  $age =  5
  case $age
  when 0 .. 2
     puts "baby"
  when 3 .. 6
     puts "little child"
  when 7 .. 12
     puts "child"
  when 13 .. 18
     puts "youth"
  else
     puts "adult"
  end
  ```

## [Loops](#list-of-contents) <span id="content-7"></span>

### while Statement
- Snippet:
  ```ruby
  $i = 0
  $num = 5

  while $i < $num  do
     puts("Inside the loop i = #$i" )
     $i +=1
  end
  ```

### while modifier
- Snippet:
  ```ruby
  $i = 0
  $num = 5
  begin
     puts("Inside the loop i = #$i" )
     $i +=1
  end while $i < $num
  ```
  
### until Statement
- Snippet:
  ```ruby
  $i = 0
  $num = 5

  until $i > $num  do
     puts("Inside the loop i = #$i" )
     $i +=1;
  end
  ```

### until modifier
- Snippet:
  ```ruby
  $i = 0
  $num = 5
  begin
     puts("Inside the loop i = #$i" )
     $i +=1;
  end until $i > $num
  ```

### for Statement
- Snippet:
  ```ruby
  for i in 0..5
     puts "Value of local variable is #{i}"
  end
  
  (0..5).each do |i|
     puts "Value of local variable is #{i}"
  end
  ```
  
### break Statement
- Snippet:
  ```ruby
  for i in 0..5
     if i > 2 then
        break
     end
     puts "Value of local variable is #{i}"
  end
  ```

### next Statement
- Snippet:
  ```ruby
  for i in 0..5
     if i < 2 then
        next
     end
     puts "Value of local variable is #{i}"
  end
  ```
  
### redo Statement
- Restarts this iteration of the most internal loop, without checking loop condition. Restarts yield or call if called within a block.
- Snippet:
  ```ruby
  for i in 0..5
     if i < 2 then
        puts "Value of local variable is #{i}"
        redo
     end
  end
  ```

### retry Statement
- If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.
- Snippet:
  ```ruby
  begin
     do_something # exception raised
  rescue
     # handles error
     retry  # restart from beginning
  end
  ```
- If retry appears in the iterator, the block, or the body of the for expression, restarts the invocation of the iterator call. Arguments to the iterator is re-evaluated.
- Snippet:
  ```ruby
  for i in 0..5
     retry if i > 2
  puts "Value of local variable is #{i}"
  end
  ```

## [Methods](#list-of-contents) <span id="content-8"></span>
- Method names should begin with a lowercase letter. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly.
- Snippet:
  ```ruby
  def test(a1 = "Ruby", a2 = "Perl")
     puts "The programming language is #{a1}"
     puts "The programming language is #{a2}"
  end
  test "C", "C++"
  test
  ```
- Every method in Ruby returns a value by default. This returned value will be the value of the last statement.
- Snippet:
  ```ruby
  def test
     i = 100
     j = 10
     k = 0
  end
  # return k = 0
  ```
- Snippet:
  ```ruby
  def test
     i = 100
     j = 200
     k = 300
  return i, j, k
  end
  var = test
  puts var
  ```
- Variable number of parameters:
  ```ruby
  #!/usr/bin/ruby

  def sample (*test)
     puts "The number of parameters is #{test.length}"
     for i in 0...test.length
        puts "The parameters are #{test[i]}"
     end
  end
  sample "Zara", "6", "F"
  sample "Mac", "36", "M", "MCA"
  ```
- When a method is defined outside of the class definition, the method is marked as private by default.
- On the other hand, the methods defined in the class definition are marked as public by default.
- The default visibility and the private mark of the methods can be changed by public or private of the Module.
- Whenever you want to access a method of a class, you first need to instantiate the class. Then, using the object, you can access any member of the class.
- Snippet:
  ```ruby
  class Accounts
     def reading_charge
     end
     def Accounts.return_date
     end
  end

  Accounts.return_date
  ```
- Alias statement: 
  ```ruby
  alias foo bar
  alias $MATCH $&
  ```
- undef Statement: This cancels the method definition. An undef cannot appear in the method body.

## [Blocks](#list-of-contents) <span id="content-9"></span>
- Snippet:
  ```ruby
  def test
     puts "You are in the method"
     yield
     puts "You are again back to the method"
     yield
  end
  test {puts "You are in the block"}
  ```
- Snippet:
  ```ruby
  def test
     yield 5
     puts "You are in the method test"
     yield 100
  end
  test {|i| puts "You are in the block #{i}"}
  
  def something
    yield 5, 3
  end
  
  something{|a, b| puts "Something is something #{a} and #{b}"}
  ```
- Snippet:  
  ```ruby
  def test
     yield
  end
  test{ puts "Hello world"}

  def test(&block)
    block.call
  end
  test { puts "Hello World!"}
  ```
- Snippet:
  ```ruby
  BEGIN { 
     # BEGIN block code 
     puts "BEGIN code block"
  } 

  END { 
     # END block code 
     puts "END code block"
  }
     # MAIN block code 
  puts "MAIN code block"
  ```


## [Modules and Mixins](#list-of-contents) <span id="content-10"></span>
- Modules define a namespace, a sandbox in which your methods and constants can play without having to worry about being stepped on by other methods and constants.
- Module constants are named just like class constants, with an initial uppercase letter.
- The method definitions look similar, too: Module methods are defined just like class methods.
- Snippet:
  ```ruby
  # Module defined in trig.rb file

  module Trig
     PI = 3.141592654
     def Trig.sin(x)
     # ..
     end
     def Trig.cos(x)
     # ..
     end
  end
  ```
- If a third program wants to use any defined module, it can simply load the module files using the Ruby require statement
- Snippet:
  ```ruby
  $LOAD_PATH << '.'

  require 'trig.rb'
  require 'moral'

  y = Trig.sin(Trig::PI/4)
  wrongdoing = Moral.sin(Moral::VERY_BAD)
  ```
- Here we are using $LOAD_PATH << '.' to make Ruby aware that included files must be searched in the current directory.
- If you do not want to use $LOAD_PATH then you can use require_relative to include files from a relative directory.
- To embed a module in a class, you use the include statement in the class
- Snippet:
  ```ruby
  # support.rb
  module Week
    FIRST_DAY = "Sunday"
    def Week.weeks_in_month
      puts "You have four weeks in a month"
    end
    def Week.weeks_in_year
      puts "You have 52 weeks in a year"
    end
  end
  ```
- Usage of the above module:
  ```ruby
  $LOAD_PATH << '.'
  require "support"

  class Decade
  include Week
     no_of_yrs = 10
     def no_of_months
        puts Week::FIRST_DAY
        number = 10*12
        puts number
     end
  end
  d1 = Decade.new
  puts Week::FIRST_DAY
  Week.weeks_in_month
  Week.weeks_in_year
  d1.no_of_months
  ```
- Mixins give you a wonderfully controlled way of adding functionality to classes. However, their true power comes out when the code in the mixin starts to interact with code in the class that uses it.
- Snippet:
  ```ruby
  module A
     def a1
     end
     def a2
     end
  end
  module B
     def b1
     end
     def b2
     end
  end

  class Sample
  include A
  include B
     def s1
     end
  end

  samp = Sample.new
  samp.a1
  samp.a2
  samp.b1
  samp.b2
  samp.s1
  ```


## [Strings](#list-of-contents) <span id="content-11"></span>
- Expression substitution:
  ```ruby
  x, y, z = 12, 36, 72
  puts "The value of x is #{ x }."
  puts "The sum of x and y is #{ x + y }."
  puts "The average was #{ (x + y + z)/3 }."
  ```
- The default character set for Ruby is ASCII, whose characters may be represented by single bytes. If you use UTF-8, or another modern character set, characters may be represented in one to four bytes.
  ```ruby
  # You can change your character set using $KCODE at the beginning of your program
  $KCODE = 'u'
  ```

## [Strings](#list-of-contents) <span id="content-12"></span>

### Creating Arrays:
- Snippet:
```ruby
names = Array.new(20)

names = Array.new(4, "mac")

nums = Array.new(10) { |e| e = e * 2 }

nums = Array.[](1, 2, 3, 4,5)

nums = Array[1, 2, 3, 4,5]

digits = Array(0..9)
```

### Array built-in methods
- Snippet:
```ruby
digits = Array(0..9)
num = digits.at(6)
```


## [Hashes](#list-of-contents) <span id="content-13"></span>

### Creating Hashes
- Snippet:
```ruby
months = Hash.new( "month" )

puts "#{months[0]}"
# month
puts "#{months[72]}"
# month


H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
# 100
puts "#{H['b']}"
# 200

$, = ", "
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}

keys = months.keys
puts "#{keys}"
# ["1", "2"]
```


## [Date and Time](#list-of-contents) <span id="content-14"></span>

### Getting Current Date and Time
- Snippet:
```ruby
time1 = Time.new
puts "Current Time : " + time1.inspect
# Current Time : Mon Jun 02 12:02:39 -0700 2008

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect
# Current Time : Mon Jun 02 12:02:39 -0700 2008
```

**[⬆ back to top](#list-of-contents)**

<br />

---

## References:
- https://www.tutorialspoint.com/index.htm
