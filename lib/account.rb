class Account

  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

end
