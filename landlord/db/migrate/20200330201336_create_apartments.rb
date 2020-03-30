class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.text :address
      t.integer :monthly_rent
      t.integer :sqft
      t.integer :num_beds
      t.integer :num_baths
      t.boolean :allows_pets

      t.timestamps
    end
  end
end
