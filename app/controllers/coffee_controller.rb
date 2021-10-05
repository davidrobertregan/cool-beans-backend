class CoffeeController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/coffees" do
        Coffee.all.to_json(include: [:roaster, { reviews: { include: :drinker } }])
    end

    get "/coffees/:id/average_rating" do
        Coffee.find(params[:id]).average_rating.to_json
    end
end
