# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.integer :model_year, null: false
      t.boolean :status, null: false
      t.decimal :price, precision: 15, scale: 2, null: false
      t.references :user, null: false, foreign_key: true
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end

    add_index :cars, :status
    add_index :cars, :make
    add_index :cars, :model
  end
end
