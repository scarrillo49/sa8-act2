class BankAccount
    attr_reader :balance
  
    def initialize(initial_balance = 0)
      @balance = initial_balance
    end
  
    def deposit(amount)
      @balance += amount
      log_transaction("Deposit", amount)
    end
  
    def withdraw(amount)
      raise ArgumentError, "Insufficient funds" if amount > @balance
      @balance -= amount
      log_transaction("Withdrawal", amount)
    end
  
    private
  
    def log_transaction(transaction_type, amount)
      puts "Transaction: #{transaction_type} - $#{amount:.2f} (New balance: $#{balance:.2f})"
    end
  end
  
  account = BankAccount.new(300)
  
  account.deposit(100)
  account.withdraw(50)
  
  puts "Balance: $#{account.balance:.2f}"
  