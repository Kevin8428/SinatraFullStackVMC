class ApplicationController < Sinatra::Base
  require 'Bundler'
  Bundler.require
  ActiveRecord::Base.establish_connection(
    :database => 'shopping_db',
    :adapter => 'postgresql'
  )

  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  not_found do
    erb :not_found
  end
end
