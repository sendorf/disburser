# frozen_string_literal: true

class Shopper < ApplicationRecord
  self.implicit_order_column = 'created_at'

  validates_presence_of :email, :name, :nif
  validates_uniqueness_of :email, :nif
end
