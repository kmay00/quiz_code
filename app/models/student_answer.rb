class StudentAnswer < ActiveRecord::Base
  belongs_to :questions
  belongs_to :answers

  def self.get_quiz_results
    @quiz_answers = []
    @quiz_results = StudentAnswer.last(5)
    @quiz_results.each do |qr|
      @qr_question = Question.find(qr.question_id).question_asked
      @qr_p_answer = Answer.find(qr.answer_id).possible_answer
      @qr_c_answer = Answer.find_by(question_id: qr.question_id, is_correct: true).possible_answer
      @quiz_answers << {question: @qr_question, picked_answer: @qr_p_answer, correct_answer: @qr_c_answer}
    end
    @quiz_answers
  end
end
