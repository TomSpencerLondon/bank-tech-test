require 'account'

describe Account do

  let(:subject) { Account.new(500) }

  describe '#credit' do
    it 'adds credit and increases the balance' do
      expect { subject.credit(500) }.to change { subject.balance }.by(500)
    end
  end

  describe '#withdraw' do
    it 'withdraws and decreases the balance' do
      expect { subject.withdraw(300) }.to change { subject.balance }.by(-300)
    end
  end
end
