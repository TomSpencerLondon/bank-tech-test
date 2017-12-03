class Account

  attr_reader :balance, :history

  def initialize(balance, transaction, history)
    @balance = balance
    @tansaction = transaction
    @history = history
  end

  def credit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'You do not have the funds' if @balance < amount
    @balance -= amount
  end

end
