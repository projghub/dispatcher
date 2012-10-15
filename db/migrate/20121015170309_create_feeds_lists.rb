class CreateFeedsLists < ActiveRecord::Migration
  def up
    create_table :feeds_lists do |t|
      t.integer :feed_id
      t.integer :list_id
    end
  end

  def down
    drop_table :feeds_lists
  end
end
