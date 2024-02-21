class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  
  class Refrigerator < Appliance
    def initialize(capacity)
      @capacity = capacity
    end
  
    def show_specific_info
      puts "This is a refrigerator with a capacity of #{@capacity} liters."
    end
  end
  
  class Microwave < Appliance
    def initialize(wattage)
      @wattage = wattage
    end
  
    def show_specific_info
      puts "This is a microwave with a wattage of #{@wattage} watts."
    end
  end
  
  fridge = Refrigerator.new(300)
  microwave = Microwave.new(900)
  
  fridge.show_info  
  microwave.show_info  
  
  fridge.show_specific_info  
  microwave.show_specific_info  
  