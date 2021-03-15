# frozen_string_literal: true

class ChangePriceColumnForCars < ActiveRecord::Migration[6.0]
  def change
    change_column :cars, :price, :decimal, precision: 9, scale: 2
  end
end
