class AddQuestionToStudentAnswer < ActiveRecord::Migration
  def change
    add_reference :student_answers, :question, index: true, foreign_key: true
  end
end
