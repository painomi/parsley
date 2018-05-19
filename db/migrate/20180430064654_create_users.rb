class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :image_url
      t.string :email
      t.string :token
      t.string :role, default: 0
      t.datetime :deleted_at, index: true
      
      t.timestamps null: false
    end
  end
end
