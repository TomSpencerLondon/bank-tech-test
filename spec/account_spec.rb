require 'account'

describe Account do

  let(:subject) { Account.new(500) }

  describe '#credit' do
    it 'adds credit and increases the balance' do
      expect { subject.credit(500) }.to change { subject.balance }.by(500)
    end
  end
end
