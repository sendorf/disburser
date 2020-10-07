# frozen_string_literal: true

class DisburseJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    Order.not_disbursed.completed.find_each do |order|
      Order.transaction do
        Fee.create(amount: fee_amount(order.amount), order_id: order.id)
        order.disbursed_at = Time.now
        order.save
      end
    end
  end

  def fee_amount(order_amount)
    case order_amount
    when (0...50)
      order.amount * 0.01
    when (50...300)
      order.amount * 0.0095
    else
      order.amount * 0.0085
    end
  end
end
