class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.belongs_to :coffee
      t.belongs_to :drinker
    end
  end
end
