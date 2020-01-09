class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
    t.string :name
    t.integer :song_ids
    t.integer :genre_ids
  end
end
