class CreateChords < ActiveRecord::Migration[6.1]
  def change
    create_table :chords do |t|
      t.string :name
      t.string :qualitytype
      t.string :note
      t.string :sound
      t.string :image

      t.timestamps
    end
  end
end
