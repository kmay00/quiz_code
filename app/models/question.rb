class Question < ActiveRecord::Base
  belongs_to :quiz
  has_one :answer
  validates :question_asked, presence: true, length: { maximum:200 }
end
