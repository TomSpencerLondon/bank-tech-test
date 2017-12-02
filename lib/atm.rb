class Atm

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def credit(amount)
    @account.credit(amount)
  end
end
