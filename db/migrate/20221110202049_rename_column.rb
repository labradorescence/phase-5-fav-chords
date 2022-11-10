class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :chords, :name, :root
  end
end
