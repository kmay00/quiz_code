class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4

      t.timestamps null: false
    end
  end
end
