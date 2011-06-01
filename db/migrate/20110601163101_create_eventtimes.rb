class CreateEventtimes < ActiveRecord::Migration
  def self.up
    create_table :eventtimes do |t|
      t.timestamp :start
      t.timestamp :end
      t.text :description
      t.references :event

      t.timestamps
    end
  end

  def self.down
    drop_table :eventtimes
  end
end
