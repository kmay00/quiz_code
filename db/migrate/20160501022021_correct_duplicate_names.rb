class CorrectDuplicateNames < ActiveRecord::Migration
  def change
    rename_column :questions, :question, :question_asked
    rename_column :answers, :answer, :possible_answer
  end
end
