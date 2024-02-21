class Gadget
    attr_reader :name
  
    attr_writer :price
  
    def initialize(name, price = 0)
      @name = name
      @price = price
    end
  end
  
  gadget = Gadget.new("iPhone", 1000.99)
  
  puts "Gadget name: #{gadget.name}"
  
  new_price = 1100.99
  gadget.price = new_price
  
  puts "New price: #{gadget.price}"
  