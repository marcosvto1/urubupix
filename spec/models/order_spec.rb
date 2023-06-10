# frozen_string_literal: true

describe Order, type: :model do
  context "with order" do
    let(:params) { { value: 45, user_id: 1 }}
    let(:order) { described_class.new(value: params[:value], user_id: params[:user_id]) }

    it {expect(order.value).to eq(45)}
    it {expect(order.user_id).to eq(1)}
  end
end
