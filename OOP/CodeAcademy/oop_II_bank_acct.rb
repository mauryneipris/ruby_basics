class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: #{@balance}" : pin_error
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      if amount < 0 
        puts "Please enter a positive amount. To withdraw money, please use withdraw method."
      else
        @balance += amount
        puts "Deposited $#{amount}. New balance: $#{@balance}"
      end
    end
  end
  def withdraw(pin_number, amount)
    if pin_number == pin
      if @balance < amount
        puts "Denied. Insufficient funds."
      else 
       @balance -= amount
       puts "Withdrew #{amount}. New balance: $#{@balance}" 
      end
    else 
      puts pin_error
    end
  end
end

class CheckingAccount < Account
end

class SavingsAccount < Account
end

checking_account = Account.new("money", 9000)

checking_account.withdraw(1234, 50)
checking_account.withdraw(1234, 9000)
