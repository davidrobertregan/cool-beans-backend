class RoasterAddUrl < ActiveRecord::Migration[6.1]
  def change
    add_column :roasters, :url, :string
  end
end
