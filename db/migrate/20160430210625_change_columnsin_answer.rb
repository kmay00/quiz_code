class ChangeColumnsinAnswer < ActiveRecord::Migration
  def change
    rename_column :answers, :answer_1, :answer
    rename_column :answers, :answer_2, :is_correct
    rename_column :answers, :answer_3, :question_id
    remove_column :answers, :answer_4
  end
end
