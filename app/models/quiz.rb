class Quiz < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, length: { maximum:50 }
end
