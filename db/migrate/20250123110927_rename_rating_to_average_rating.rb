class RenameRatingToAverageRating < ActiveRecord::Migration[7.1]
  def change
    rename_column :lairs, :rating, :average_rating
  end
end
