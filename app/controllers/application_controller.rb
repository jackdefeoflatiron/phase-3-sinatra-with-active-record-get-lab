class ApplicationController < Sinatra::Base

get '/bakeries' do
  bakeries = Bakery.all
  bakeries.to_json
end

get '/bakeries/:id' do
  bakery = Bakery.find(params[:id])
  backeries.to_json(include: :baked_goods)
end

get '/baked_good/by_price' do
  baked_goods = BakedGood.by_price 
  baked_goods.to_json
end

get '/baked_goods/most_expensive' do
  baked_good = BakedGood.by_price.first
  baked_good.to_json
end

end
