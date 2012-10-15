class CreateTimezones < ActiveRecord::Migration
  def up
    create_table :timezones do |t|
      t.string :name
      t.string :label
    end
  end

  def down
    drop_table :timezones
  end
end
