class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 0.05
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def balance=(balance)
    @balance = balance
  end

  def interest_rate=(interest_rate)
    @interest_rate = interest_rate
  end

  def deposit=(amount)
    @balance += amount
  end

  def withdraw=(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= @interest_rate
  end

end

# ba = BankAccount.new
#
# ba.balance = 100
# puts ba.balance
#
# ba.withdraw = 50
# puts ba.balance
#
# ba.gain_interest
# puts ba.gain_interest
