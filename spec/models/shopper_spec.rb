# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shopper, type: :model do
  describe 'implicit_order_column' do
    it 'returns created_at' do
      expect(described_class.implicit_order_column).to eq 'created_at'
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:nif) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:nif) }
  end
end
