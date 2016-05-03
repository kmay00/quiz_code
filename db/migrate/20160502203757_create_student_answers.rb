class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|

      t.timestamps null: false
    end
  end
end
