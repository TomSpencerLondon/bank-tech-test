require 'account'

describe Account do
  balance = 1000
  amount = 500

  let(:transaction) { double :transaction, type: nil, balance: nil}
  let(:history) { double :history, transactions: [] }
  let(:subject) { Account.new(balance, balance, history) }

  it 'is created with a balance of the amount provided upon creation of the account' do
    expect(subject.balance).to eq(1000)
  end

  describe '#credit' do
    it 'adds credit and increases the balance' do
      expect { subject.credit(amount) }.to change { subject.balance }.by(500)
    end
  end

  describe '#withdraw' do
    it 'withdraws and decreases the balance' do
      expect { subject.withdraw(amount) }.to change { subject.balance }.by(-500)
    end
  end
end
