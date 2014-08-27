require 'pg'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

### FETCH CODE ###

def db_connect
  begin
    connection = PG.connect(dbname: 'slacker_news')
    yield(connection)
  ensure
    connection.close
  end
end

def fetch_data(query)
  db_connect do |conn|
    result = conn.exec_params(query)
  end
end

### ROUTES ###

get '/' do
  query = "
  SELECT title, url, description
  FROM articles"

  @articles = fetch_data(query)

  erb :articles
end

get '/submit' do
  erb :submit
end

post '/submit' do
  title = params['title']
  url = params['url']
  des = params['description']

  save_article(url, title, des)

  redirect '/'
end
