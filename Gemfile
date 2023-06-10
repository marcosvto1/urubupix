# frozen_string_literal: true
source "https://rubygems.org"

gem 'sinatra'
gem 'sinatra-activerecord' # ORM GEM
gem 'rake'
gem 'dotenv'
gem 'puma'

# gem "byebug", "~> 11.1", :groups => [:development, :test]

group :test do
    gem "rspec"
    gem "rack-test"
    gem "simplecov"
    gem "database_cleaner"
    gem 'database_cleaner-active_record'
end

group :development do
    gem 'sqlite3'
    gem 'tux'
end

group :production do
    gem 'pg'
end
