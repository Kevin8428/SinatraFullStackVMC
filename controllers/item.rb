class ItemController < ApplicationController

  get '/' do
    @item = Item.all
    erb :read
  end

  get '/create' do
    erb :create #this returns the view
  end

  post '/create' do
    p params
    @item = Item.new
    @item.name = params[:name] # left side ties to table field name, right to erb view
    @item.quantity = params[:quantity]
    @item.save
    erb :read
  end

  get '/update/:id' do
    @item = Item.find(params[:id])
    @item.id
    erb :update #this returns view
  end

  post '/update' do
    @item = Item.find(params[:id])
    @item.name = params[:name]
    @item.quantity = params[:quantity]
    @item.save
    erb :read
  end

  get '/destroy/:id' do
    @item = Item.find(params[:id])
    @item.id
    erb :destroy
  end

  post '/destroy' do
    @item = Item.find(params[:id])
    @item.destroy
  end
end
