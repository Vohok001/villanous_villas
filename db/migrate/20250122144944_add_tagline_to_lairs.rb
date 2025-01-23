class AddTaglineToLairs < ActiveRecord::Migration[7.1]
  def change
    add_column :lairs, :tagline, :string
  end
end
