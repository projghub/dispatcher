class CreateLists < ActiveRecord::Migration
  def up
    create_table :lists do |t|
      t.integer :vendor_id
      t.string :name
      t.string :customer_type
      t.string :status
      t.string :account_number

      t.timestamps
    end
  end

  def down
    drop_table :lists
  end
end
