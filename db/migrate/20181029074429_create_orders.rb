class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, id: :uuid, default: 'gen_random_uuid()' do |t|
      enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
      t.references :user, index: true
      t.integer :total_count
      t.money :total_price
      t.timestamps
    end
  end
end
