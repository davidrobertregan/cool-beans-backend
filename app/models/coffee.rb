class Coffee < ActiveRecord::Base
    has_many :reviews
    has_many :drinkers, through: :reviews
    belongs_to :roaster
end