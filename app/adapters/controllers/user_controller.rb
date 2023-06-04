require './app/usecases/users/create'
require './app/usecases/users/get_users'
require './app/model/user'
require './app/adapters/repositories/user_repository'

class UserController
  def self.create(params)
    Users::Create.new(params: params).call
  end

  def self.index
    Users::GetUsers.new().call
  end
end
