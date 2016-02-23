class AddEmpfaengerIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :empfaenger_id, :integer
  end
end
