class Roaster < ActiveRecord::Base
    has_many :coffees
    has_many :reviews, through: :coffees
    has_many :drinkers, through: :reviews
end