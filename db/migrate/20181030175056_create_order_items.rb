class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :order_items, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.integer :quantity
      t.money :price
      t.references :user, index: true
      t.references :order, index: true
      t.references :hardware, index: true
      t.timestamps
    end
  end
end
