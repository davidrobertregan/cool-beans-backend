class RoasterController < ApplicationController
    set :default_content_type, 'application/json'

    get "/roasters" do
        Roaster.all.to_json
    end

    get "/roasters/:id" do
        Roaster.find(params[:id]).to_json
    end
end