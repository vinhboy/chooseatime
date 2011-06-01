class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
      t.references :eventtime
      t.references :user
      t.string :option

      t.timestamps
    end
  end

  def self.down
    drop_table :choices
  end
end
