class Transaction

  attr_reader :type, :date, :amount, :balance

  def initialize(type, amount, balance)
    @type = type
    @date = Date.today
    @amount = amount
    @balance = balance
  end

end
