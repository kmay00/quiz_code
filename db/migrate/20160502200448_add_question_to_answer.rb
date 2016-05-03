class AddQuestionToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :question, index: true, foreign_key: true
    add_reference :questions, :quiz, index: true, foreign_key: true
  end
end
