# frozen_string_literal: true

class Car < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :dealership
  has_one_attached :cover_photo

  validates :make, :model, :model_year, :status, :price, presence: true

  before_action :depreciate_value, only: :show

  private

  def depreciate_value
    if car.last_depreciation_date < Date.today - 1.month
      monthly_depreciation_amount = (car.price * 0.98) - car.price
      total_depreciation_amount = (Date.today - car.last_depreciation_date).to_i * monthly_depreciation_amount
      car.update_attribute(:price, (car.price - total_depreciation_amount))
      car.last_depreciation_date = Date.today
    end
  end
end
