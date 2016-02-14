class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.time :time
      t.date :date
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
