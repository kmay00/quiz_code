class ChangeColumnDatatypesInAnswer < ActiveRecord::Migration
  def change
    change_column :answers, :is_correct, 'boolean USING CAST(is_correct AS boolean)'
    change_column :answers, :question_id, 'integer USING CAST(question_id AS integer)'
  end
end
