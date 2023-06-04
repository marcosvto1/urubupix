require './app/model/user'
require './app/adapters/repositories/user_repository'

module Users
  class GetUsers
    def initialize(user: User, user_repository: UserRepository)
      @user = user
      @user_repository = user_repository
    end

    def call
      @user_repository.all
    end
  end
end
