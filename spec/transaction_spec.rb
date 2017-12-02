require 'transaction'
require 'date'

describe Transaction do
  type = 'credit'
  amount = 500
  balance = 1000

  let(:subject){ Transaction.new(type, amount, balance) }

  describe '#type' do
    it 'is created with a transaction type' do
    expect(subject.type).to eq('credit')
    end
  end

  describe '#date' do
    it 'is created with a transaction date' do
      expect(subject.date).to eq(Date.today)
    end
  end
end
