require 'transaction'
require 'date'

describe Transaction do
  type = 'credit'
  date = Date.today
  amount = 500
  balance = 1000

  let(:subject){ Transaction.new(type, date, amount, balance) }

  describe '#type' do
    it 'is created with a transaction type' do
    expect(subject.type).to eq('credit')
    end
  end

end
