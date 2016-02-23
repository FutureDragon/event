class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :titl
      t.text :text
      t.integer :anfrage_id
      t.integer :sender_id

      t.timestamps null: false
    end
  end
end
