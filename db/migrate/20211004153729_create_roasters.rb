class CreateRoasters < ActiveRecord::Migration[6.1]
  def change    
    create_table :roasters do |t|
      t.string :name
      t.string :location
      t.string :image
    end
  end
end
