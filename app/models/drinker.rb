class Drinker < ActiveRecord::Base
    has_many :reviews
    has_many :coffees, through: :reviews
    has_many :roasters, through: :coffees
end