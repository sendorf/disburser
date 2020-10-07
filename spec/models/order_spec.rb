# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'implicit_order_column' do
    it 'returns created_at' do
      expect(described_class.implicit_order_column).to eq 'created_at'
    end
  end
  describe 'relationships' do
    it { is_expected.to belong_to :merchant }
    it { is_expected.to belong_to :shopper }
  end

  describe 'validations' do
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:created_at) }
  end
end
