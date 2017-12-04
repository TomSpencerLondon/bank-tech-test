require 'account'

describe Account do
  balance = 1000
  amount = 500

  let(:transaction) { double :transaction, type: nil, balance: nil}
  let(:history) { double :history, transactions: [] }
  let(:subject) { Account.new(balance, transaction, history) }

  it 'is created with a balance of the amount provided upon creation of the account' do
    expect(subject.balance).to eq(1000)
  end

  before(:each) do
    allow(transaction).to receive(:new)
    allow(history).to receive(:add_transaction).with(transaction.new)

  end

  describe '#credit' do
    it 'adds credit and increases the balance' do
      expect { subject.credit(amount) }.to change { subject.balance }.by(500)
    end
    it 'adds the transaction to history' do
      expect(history).to receive(:add_transaction)
      subject.credit(amount)
    end
  end

  describe '#withdraw' do
    it 'withdraws and decreases the balance' do
      expect { subject.withdraw(amount) }.to change { subject.balance }.by(-500)
    end
    it 'doesn\'t allow a user to withdraw more than is available' do
      invalid_amount = 2000
      expect{ subject.withdraw(invalid_amount) }.to raise_error('You do not have the funds')
    end
    it 'adds the transaction to history' do
      expect(history).to receive(:add_transaction)
      subject.withdraw(amount)
    end
  end
end
