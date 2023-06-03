require './app/usecases/users/create'
require './app/model/user'
require './app/adapters/repositories/user_repository'

class UserController
  def self.create(params)
    Users::Create.new(params: params).call
  end
end
