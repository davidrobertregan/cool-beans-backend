class Review < ActiveRecord::Base
    belongs_to :drinker
    belongs_to :coffee
end