db = ENV['DB_PATH']

# database_name = "#{SetList.environment}"

database_name =  Sinatra::Base.environment

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => "db/#{database_name}.sqlite3",
)
