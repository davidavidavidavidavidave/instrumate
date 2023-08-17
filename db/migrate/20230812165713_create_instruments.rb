class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :type
      t.string :genre
      t.string :description
      t.integer :price
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
