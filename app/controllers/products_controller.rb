class ProductsController < ApplicationController

	

  def index
  	page = params[:page] || 1
  	@products = JSON.parse(open("http://lcboapi.com/products?where=has_limited_time_offer&order=limited_time_offer_savings_in_cents.desc&per_page=10&page=#{page}").read)
  end

  def show
  	@product = JSON.parse(open("http://lcboapi.com/products/#{params[:id]}").read)['result']
  end

  def update
  
  end
end
