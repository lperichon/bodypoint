class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.references :activity
      t.references :location
      t.integer :day_of_week
      t.time :happens_at

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
