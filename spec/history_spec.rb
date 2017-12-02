require 'history'

describe History do

  let(:subject) { History.new }
  let(:transaction) { double :transaction }

  describe '#transactions' do
    it 'has an array of transactions' do
      expect(subject.transactions).to be_empty
    end

    it 'can add transactions' do
      expect { subject.add_transaction(transaction) }.to change { subject.transactions.length }.by(1)
    end
  end

end
