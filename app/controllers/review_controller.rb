class ReviewController < ApplicationController
    set :default_content_type, 'application/json'

    get "/roasters" do
        Roaster.all.to_json
    end
end