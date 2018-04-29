class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.references :artist, index: true
      t.date :publish_at
      t.integer :media_type
      t.integer :release_type
      t.integer :production_type

      t.timestamps
    end
  end
end
