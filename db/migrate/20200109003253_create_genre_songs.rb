class CreateGenreSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_songs do |t|
      t.integer :genre_id
      t.integer :song_id
      t.timestamps null: false
    end
  end
end