require "sinatra"
require "sinatra/activerecord"
require "dotenv"

Dotenv.load

set :database, {adapter: "sqlite3", database: ENV['DB_PATH'] }

require './app/adapters/repositories/user_repository.rb'

p UserRepository.find(1)
