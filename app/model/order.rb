require './app/model/base'

class Order < BaseModel
  attr_accessor :value, :user_id

  def initialize(value:, user_id:)
    @value = value
    @user_id = user_id
  end
end
