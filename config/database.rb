db = ENV['DB_PATH']

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => db
)
