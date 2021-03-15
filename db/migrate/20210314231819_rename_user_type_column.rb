# frozen_string_literal: true

class RenameUserTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :type, :user_type
  end
end
