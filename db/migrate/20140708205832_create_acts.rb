class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
