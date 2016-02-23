class AddGelesenToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :gelesen, :integer
  end
end
