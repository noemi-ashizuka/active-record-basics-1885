class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      # t.integer :rating -> we can't add this if the migration has already been run
      t.timestamps # creates 2 columns: created_at and updated_at
    end
  end
end
