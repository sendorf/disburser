class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.uuid :merchant_id
      t.uuid :shopper_id
      t.float :amount
      t.timestamp :completed_at
      t.timestamp :disbursed_at

      t.timestamps
    end
  end
end
