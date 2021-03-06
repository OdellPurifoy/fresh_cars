# frozen_string_literal: true

class RemoveNullConstraintFromUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :type, :integer, null: true
  end
end
