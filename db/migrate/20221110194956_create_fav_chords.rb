class CreateFavChords < ActiveRecord::Migration[6.1]
  def change
    create_table :fav_chords do |t|
      t.integer :chord_id
      t.integer :user_id

      t.timestamps
    end
  end
end