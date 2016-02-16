class AddEventIdToAnfrages < ActiveRecord::Migration
  def change
    add_column :anfrages, :event_id, :integer
  end
end
