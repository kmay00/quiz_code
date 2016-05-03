class AddAnswerToStudentAnswer < ActiveRecord::Migration
  def change
    add_reference :student_answers, :answer, index: true, foreign_key: true
  end
end
