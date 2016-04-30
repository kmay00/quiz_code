class RemoveTitleFromQuestion < ActiveRecord::Migration
  def change
    remove_column :questions, :title, :string
    remove_column :questions, :correct_answer, :string
  end
end
