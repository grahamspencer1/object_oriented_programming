class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    return @balance
  end

  def interest_rate
    return @interest_rate
  end

  def balance=(balance)
    @balance = balance
  end

  def interest_rate=(interest_rate)
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest(interest_rate)
    @balance *= @interest_rate
  end

  # def total
  #   "#{@interest_rate} #{@balance}"
  # end
  #
  # def statement
  #   "Your account information is #{total}"
  # end

end
