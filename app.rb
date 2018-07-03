require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/namespace'
require "sinatra/activerecord"

require 'haml'
require 'sass'

require_relative 'models/todo'

class Server < Sinatra::Base

  configure do
    register Sinatra::Reloader
    register Sinatra::ActiveRecordExtension
    set :database, {adapter: "sqlite3", database: "db/todolist.db"}
  end

  # scss
  get '/css/materialize.css' do
    scss :'scss/materialize'
  end

  get '/css/style.css' do
    scss :'scss/style'
  end

  #routes
  
  get '/' do
    @todo = Todo.all.group_by(&:status)
    p @todo
    haml :index
  end 

  post '/regist' do
    content = params['content']
    status = params['status']
    todo = Todo.new(content: content, status: status)
    todo.save
    redirect '/'
  end
  patch '/update' do
    @todo = Todo.find(params[:id])
      if @todo.update
      redirect '/'
    end
  end
  delete '/destroy' do
    @todo = Todo.find(params[:id])
      @todo.destroy
  end
end

