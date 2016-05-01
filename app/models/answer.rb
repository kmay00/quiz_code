class Answer < ActiveRecord::Base
  belongs_to :question
  validates :possible_answer, presence: true, length: { maximum:200 }
end
