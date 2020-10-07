class CreateFees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees, id: :uuid do |t|
      t.uuid :order_id
      t.float :amount

      t.timestamps
    end
  end
end
