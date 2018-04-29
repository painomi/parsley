class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.text :description
      t.references :lyricist, index: true
      t.references :composer, index: true
      t.references :arranger, index: true

      t.timestamps
    end
  end
end
