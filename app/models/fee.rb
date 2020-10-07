# frozen_string_literal: true

class Fee < ApplicationRecord
  self.implicit_order_column = 'created_at'

  belongs_to :order

  validates_presence_of :amount
end
