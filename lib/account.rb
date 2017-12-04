class Account

  attr_reader :balance, :history

  def initialize(balance, transaction, history)
    @balance = balance
    @transaction = transaction
    @history = history
  end

  def credit(amount)
    @balance += amount
    @history.add_transaction(@transaction.new('credit', amount, @balance))
    @balance
  end

  def withdraw(amount)
    raise 'You do not have the funds' if @balance < amount
    @balance -= amount
    @history.add_transaction(@transaction.new('debit', amount, @balance))
    @balance
  end

end
