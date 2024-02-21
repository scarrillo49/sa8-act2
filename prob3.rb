class User
    attr_reader :username
  
    def username=(new_username)
      raise ArgumentError, "Username cannot be empty or nil" if new_username.nil? || new_username.empty?
  
      @username = new_username
    end
  end
  
  user = User.new
  user.username = "valid_username"  
  
  begin
    user.username = "" 
  rescue ArgumentError => e
    puts "Error: #{e.message}"
  end
  
  begin
    user.username = nil  
  rescue ArgumentError => e
    puts "Error: #{e.message}"
  end
  