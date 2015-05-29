class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :product, index: true
      t.timestamps null: false
    end
  end
end
