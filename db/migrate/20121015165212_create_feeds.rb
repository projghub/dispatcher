class CreateFeeds < ActiveRecord::Migration
  def up
    create_table :feeds do |t|
      t.string :url
      t.string :name
      t.string :type
      t.string :status
      t.integer :seconds_old
      t.integer :include_downloaded
      t.string :api_username
      t.string :api_password
      t.string :sort_by
      t.timestamps
    end
  end

  def down
    drop_table :feeds
  end
end
