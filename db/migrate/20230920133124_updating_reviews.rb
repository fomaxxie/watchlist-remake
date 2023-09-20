class UpdatingReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :movie_id
    add_reference :reviews, :list, index: true
  end
end
