class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :provider
      t.string :uuid
      t.string :email
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.string :password_digest

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
