class Camera
\    def initialize
      @status = "off"
    end
  
    def turn_on
      self.status = "on"  
      puts "Camera is on."
    end
  
    def turn_off
      self.status = "off"
      puts "Camera is off."
    end
  
    def status
      self.@status
    end
  end
  
  camera = Camera.new
  
  camera.turn_on  
  camera.turn_off 
  
  puts "Camera status: #{camera.status}"  # Output: Camera status: off
  