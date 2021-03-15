# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dealership, type: :model do
  context 'Valid Dealership should save' do
    it 'save valid car record to db' do
      dealership = Dealership.create!(name: 'Test Dealership', description: 'Test dealership description')
      expect(dealership).to be_valid
    end
  end
end
