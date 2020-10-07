# frozen_string_literal: true

class Shopper < ApplicationRecord
  self.implicit_order_column = 'created_at'

  has_many :orders

  validates_presence_of :email, :name, :nif
  validates_uniqueness_of :email, :nif
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
