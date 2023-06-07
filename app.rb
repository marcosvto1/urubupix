require "sinatra"
require "sinatra/activerecord"
require "dotenv"
require "byebug"

Dotenv.load

require './app/adapters/controllers/user_controller'

post '/users' do
  {result: UserController.create(params)}.to_json
end

get '/users' do
  {result: UserController.index()}.to_json
end

# module UrubuPix
#   class App < Sinatra::Base
#     configure do
#       register Sinatra::ActiveRecordExtension
#       set :database, {adapter: "sqlite3", database: ENV['DB_PATH'] }
#       set :default_content_type, 'application/json'
#     end

#     configure :development do
#       register Sinatra:Reloader
#     end
#   end
# end
