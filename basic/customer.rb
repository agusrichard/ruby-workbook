class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    @@no_of_customers += 1
  end
  def talk()
    puts "Hi, I am #@cust_name"
  end
end

cust1 = Customer.new('1', 'John', 'Wisdom Apartments, Ludhiya')
cust2 = Customer.new('2', 'Pete', 'White House, Washington')
cust1.talk
