class AddForeignKeyToMovies < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :movie, index: true
  end
end
