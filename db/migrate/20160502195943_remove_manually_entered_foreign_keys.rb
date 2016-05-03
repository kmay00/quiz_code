class RemoveManuallyEnteredForeignKeys < ActiveRecord::Migration
  def change
    remove_column :answers, :question_id
    remove_column :questions, :quiz_id
  end
end
