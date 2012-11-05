class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.integer :order_id
      t.integer :pull_id
      t.integer :feed_id
      t.string :customer_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :address2
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :ip_address
      t.string :browser_agent
      t.string :url
      t.string :offer_id
      t.string :pub_id
      t.string :sub_id
      t.string :custom1
      t.string :custom2
      t.string :custom3
      t.string :custom4
      t.string :custom5
      t.string :acquired_at

      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
