class CreateLairs < ActiveRecord::Migration[7.1]
  def change
    create_table :lairs do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :max_guests
      t.float :price_per_night
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
