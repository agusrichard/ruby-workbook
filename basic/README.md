# Ruby Basic

<br />

## List of Contents:
### 1. [Syntax](#content-1)
### 2. [Class and Object](#content-2)

<br />

---

## Contents:

## [Syntax](https://google.com) <span id="content-1"></span>
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
     code
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

## [Class and Object](https://google.com) <span id="content-2"></span>
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
  

**[⬆ back to top](#list-of-contents)**

<br />

---

## References:
- https://www.tutorialspoint.com/index.htm
