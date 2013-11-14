class WelcomeController < ApplicationController
  def index
  	@dataset = JSON.parse(open("http://lcboapi.com/datasets/928").read)['result'] #converts into hash
  	@featureid = @dataset['product_ids'].sample
  	@feature = JSON.parse(open("http://lcboapi.com/products/#{@featureid}").read)['result']
  end
end
