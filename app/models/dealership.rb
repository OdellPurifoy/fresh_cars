# frozen_string_literal: true

class Dealership < ApplicationRecord
  has_many :users, through: :cars
  has_many :cars

  validates :name, :description, presence: true
end
