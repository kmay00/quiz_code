class Answer < ActiveRecord::Base
  belongs_to :question
  has_and_belongs_to_many :student_answers
  validates :possible_answer, presence: true, length: { maximum:200 }
end
