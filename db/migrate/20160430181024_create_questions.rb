class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :question
      t.string :correct_answer

      t.timestamps null: false
    end
  end
end
