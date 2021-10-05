class ReviewController < ApplicationController
    set :default_content_type, 'application/json'

    delete "/reviews/:id" do
        Review.find(params[:id]).destroy
    end

    get "/reviews" do
        Review.all.to_json
    end

    post "/reviews" do
        Review.create(params).to_json
    end
end

