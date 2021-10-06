class DrinkerController < ApplicationController
    get "/drinkers" do
        Drinker.all.to_json
    end
end