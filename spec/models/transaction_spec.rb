describe Transaction do
  describe '#initialize' do
    it 'creates a new transaction object with type and value attributes' do
      transaction = Transaction.new(type: 'debit', value: 50)
      expect(transaction.type).to eq('debit')
      expect(transaction.value).to eq(50)
    end
  end
end
