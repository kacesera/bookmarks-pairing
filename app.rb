require 'sinatra/base'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    session[:bookmarks] = BookmarkList.all
    erb :index
  end

  
  run! if app_file == $0
end
