# frozen_string_literal: true

class Order < ApplicationRecord
  self.implicit_order_column = 'created_at'

  belongs_to :merchant
  belongs_to :shopper
  has_one :fee

  validates_presence_of :amount, :created_at
end
