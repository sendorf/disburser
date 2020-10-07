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
    it { is_expected.to have_one :fee }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:created_at) }
    it { is_expected.to validate_numericality_of(:amount) }
    it { is_expected.not_to allow_value(-6).for(:amount) }
    it { is_expected.to allow_value(0.78).for(:amount) }
  end
end
