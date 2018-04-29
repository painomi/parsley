class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :number
      t.references :album, index: true
      t.references :song, index: true
      t.string :description

      t.timestamps
    end
  end
end
