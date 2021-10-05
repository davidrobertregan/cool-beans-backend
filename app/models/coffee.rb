class Coffee < ActiveRecord::Base
    has_many :reviews
    has_many :drinkers, through: :reviews
    belongs_to :roaster

    def average_rating 
        reviews.average(:rating).to_f
    end    

    def print_all_reviews
        reviews.each{|review| puts "Review for #{name} for #{review.drinker.name}: #{review.rating}. #{review.content}"}
    end

end