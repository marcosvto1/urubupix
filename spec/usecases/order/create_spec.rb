RSpec.describe Orders::Create do
  let(:user) { UserRepository.create!(name: 'teste') }

  context "when #call" do
    context "with valid params" do
      let(:params) { {value: 100, user_id: user.id} }
      let(:order) {double(Order)}
      let(:order_repository) {double(OrderRepository)}
      let(:expected_order) {Order.new(value: 100, user_id: user.id)}
      let(:new_order){ double('Order', to_hash: expected_order.to_hash)}

      before do
        allow(order).to receive(:new).and_return(expected_order)
        allow(order_repository).to receive(:create!).and_return(new_order)
      end

      it "should creates new order" do
        create = described_class.new(params: params, order: order, order_repository: order_repository)

        expect(order_repository).to receive(:create!).with(new_order.to_hash)

        r = create.call
      end
    end
  end
end
