# frozen_string_literal: true

class Merchant < ApplicationRecord
  self.implicit_order_column = 'created_at'

  validates_presence_of :email, :name, :cif
  validates_uniqueness_of :email, :cif
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
