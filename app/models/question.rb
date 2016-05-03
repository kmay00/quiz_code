class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :answers
  has_and_belongs_to_many :student_answers
  validates :question_asked, presence: true, length: { maximum:200 }
end
