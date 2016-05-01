class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :answers
  validates :question_asked, presence: true, length: { maximum:200 }
end
