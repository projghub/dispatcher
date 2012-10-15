class CreatePushes < ActiveRecord::Migration
  def up
    create_table :pushes do |t|
      t.integer :list_id

      t.timestamps
    end
  end

  def down
    drop_table :pushes
  end
end
