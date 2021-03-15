# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  has_many :dealerships, through: :cars
  has_many :cars

  enum user_type: %i[user admin]
end
