class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :name
      t.decimal :price
      t.references :order
      t.timestamps
    end
  end
end
