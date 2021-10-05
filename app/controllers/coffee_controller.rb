class CoffeeController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/coffees" do
        Coffee.all.to_json(include: [:roaster, { reviews: { include: :drinker } }])
    end

    get "/coffees/:id" do
        Coffee.find(params[:id]).to_json(include: [:roaster, { reviews: { include: :drinker } }])
    end

    get "/coffees/:id/average_rating" do
        Coffee.find(params[:id]).average_rating.to_json
    end

    get "/coffees/:id/reviews" do
        Coffee.find(params[:id]).print_all_reviews.to_json(include: :drinker)
    end

    get "/coffees/:id/roaster" do
        Coffee.find(params[:id]).roaster.to_json
    end
end
