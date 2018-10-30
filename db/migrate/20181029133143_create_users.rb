class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
      t.string :email, index: true, unique: true
      t.string :password_digest
      t.boolean :admin, default: false
      t.string :currency, default: 'USD'
      t.timestamps
    end
  end
end
