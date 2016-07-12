class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :customer

      t.timestamps null: false
    end
  end
end
