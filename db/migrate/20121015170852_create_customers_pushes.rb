class CreateCustomersPushes < ActiveRecord::Migration
  def up
    create_table :customers_pushes do |t|
      t.integer :customer_id
      t.integer :push_id
      t.string :response

      t.timestamps
    end
  end

  def down
    drop_table :customers_pushes
  end
end
