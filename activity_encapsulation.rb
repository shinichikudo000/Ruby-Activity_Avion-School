class BankAccount
    def initialize(balance)
      @balance = balance
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def withdraw(amount)
      @balance -= amount if amount <= @balance
    end
  
    def balance
      @balance
    end
  end
  
  