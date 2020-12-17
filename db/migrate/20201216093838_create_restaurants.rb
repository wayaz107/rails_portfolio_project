class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :price_range
      t.string :address
      t.integer :cuisine_id
      t.integer :city_id 
      
      t.timestamps
    end
  end
end
