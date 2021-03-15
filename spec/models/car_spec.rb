# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Car, type: :model do
  context 'Vaslid Car should save' do
    it 'save valid car record to db' do
      car = Post.create!(make: 'Ford', model: 'Explorer', price: 30_000, model_year: 2017, status: true)
      expect(car).to be_valid
    end
  end
end
