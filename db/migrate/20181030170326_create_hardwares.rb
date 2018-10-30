class CreateHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :hardwares, id: :uuid, default: 'gen_random_uuid()' do |t|
      enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
      t.string :name
      t.string :description
      t.string :category
      t.money :price
      t.timestamps
    end
  end
end
