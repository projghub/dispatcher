class CreateVendors < ActiveRecord::Migration
  def up
    create_table :vendors do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :vendors
  end
end
