require 'atm'
require 'date'

describe Atm do

  let(:account){ double :account, amount: 1000 }
  let(:atm){ Atm.new(account) }

  describe '#credit' do
    it 'allows a user to deposit' do
      amount = 500
      allow(account).to receive(:credit)
      atm.credit(amount)
    end
  end


end
