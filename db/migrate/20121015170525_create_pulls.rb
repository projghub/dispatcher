class CreatePulls < ActiveRecord::Migration
  def up
    create_table :pulls do |t|
      t.integer :feed_id
      t.string :request
      t.datetime :date_from
      t.datetime :date_to
      t.integer :include_downloaded
      t.string :sort_by
      t.integer :record_count

      t.timestamps
    end
  end

  def down
    drop_table :pulls
  end
end
