class AddLastDepreciationDateToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :last_depreciation_date, :datetime
  end
end
