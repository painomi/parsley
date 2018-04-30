class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :rateable, polymorphic: true, index: true
      t.integer :value
      t.text :memo

      t.timestamps
    end
  end
end
