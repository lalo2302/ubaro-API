require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite', database: 'foo.sqlite3' }

get '/' do
  'Welcome to Ubaro'
end
