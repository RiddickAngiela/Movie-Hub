class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.text :description
      t.string :genre
      t.string :date
    end
  end
end
