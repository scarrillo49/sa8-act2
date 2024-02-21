class Laptop
    def brand
      @brand
    end
  
    def model
      @model
    end
  
    def initialize(brand, model)
      @brand = brand
      @model = model
    end
  end
  
  laptop = Laptop.new("Apple", "MacBook Pro")
  
  puts "Brand: #{laptop.brand}"
  puts "Model: #{laptop.model}"
  