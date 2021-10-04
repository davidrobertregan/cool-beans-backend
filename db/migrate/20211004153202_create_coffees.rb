class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :roast
      t.string :image
      t.belongs_to :roaster
    end
  end
end
