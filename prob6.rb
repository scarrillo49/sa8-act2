module Drivable
    def drive
      puts "Driving!"
    end
  end
  
  class Car
    include Drivable
  end
  
  class Truck
    include Drivable
  
  end
  
  car = Car.new
  truck = Truck.new
  
  car.drive 
  truck.drive 
  