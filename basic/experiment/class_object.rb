class Customer
  @@total_customers = 0

  def initialize(name, age)
    @name = name
    @age = age
    @@total_customers += 1
  end

  def display_details()
    puts "Name is #{@name} and age is #{@age}"
  end

  def total_of_customers()
    return @@total_customers
  end
end

sekar = Customer.new("Sekardayu Hana Pradiani", 25)
sekar.display_details
puts sekar.total_of_customers
saskia = Customer.new("Saskia Nurul Azhima", 22)
saskia.display_details
puts saskia.total_of_customers
veni = Customer.new("Veni Alifa", 25)
veni.display_details
puts veni.total_of_customers

