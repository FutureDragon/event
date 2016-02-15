class AddTypToUsers < ActiveRecord::Migration
  def change
    add_column :users, :typ, :integer
  end
end
