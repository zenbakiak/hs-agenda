class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :contact, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.string :street
      t.string :zipcode
      t.integer :address_type, default: 0
      t.boolean :is_default, default: false

      t.timestamps null: false
    end
  end
end
