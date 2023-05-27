class Customer
  @@total_customers = 0
  def initialize(name, balance)
    @name = name
    @balance = balance
    @@total_customers += 1
  end

  def display_details
    puts "My name is #{@name} with balance of #{@balance}"
  end
  
  def total_no_of_customers
    puts @@total_customers
  end
end

sekar = Customer.new("sekar", 24)
sekar.display_details

saski = Customer.new("saskia", 22)
saski.display_details

sekar.total_no_of_customers