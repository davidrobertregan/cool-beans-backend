class CoffeeController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/coffees" do
        Coffee.all.to_json(include: [:roaster, { reviews: { include: :drinker } }])
    end

  end
