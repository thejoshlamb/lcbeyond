class StoresController < ApplicationController

  def index
  	@stores = JSON.parse(open("http://lcboapi.com/stores/").read)
  end

  def show
  	@store = JSON.parse(open("http://lcboapi.com/stores/#params[:id]").read)['result']
  end
end
