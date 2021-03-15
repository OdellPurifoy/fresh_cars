# frozen_string_literal: true

class AddDescriptionToDealerships < ActiveRecord::Migration[6.0]
  def change
    add_column :dealerships, :description, :text
  end
end
