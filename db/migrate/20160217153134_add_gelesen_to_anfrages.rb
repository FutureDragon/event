class AddGelesenToAnfrages < ActiveRecord::Migration
  def change
    add_column :anfrages, :gelesen, :int
  end
end
