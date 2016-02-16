class CreateAnfrages < ActiveRecord::Migration
  def change
    create_table :anfrages do |t|
      t.integer :empfaenger_id
      t.integer :absender_id
      t.string :titel
      t.text :text

      t.timestamps null: false
    end
  end
end
