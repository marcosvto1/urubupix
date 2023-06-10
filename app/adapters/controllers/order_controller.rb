require './app/usecases/orders/create'

class OrderController
  def self.create(params)
    Orders::Create.new(params: params).call
  end
end
