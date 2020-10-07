require 'rails_helper'

RSpec.describe Merchant, type: :model do

  describe 'implicit_order_column' do
    it 'returns created_at' do
      expect(described_class.implicit_order_column).to eq 'created_at'
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:cif) }
    it { should_not allow_value("test@test").for(:email) }
    it { should allow_value("test@test.test").for(:email) }
  end
end
