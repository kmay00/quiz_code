# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quiz_list = [
  "Quiz1", "Quiz2", "Quiz3", "Quiz4"
]

question_list = [
  ["Question1", 1],
  ["Question2", 1],
  ["Question3", 1],
  ["Question4", 1],
  ["Question5", 1],
  ["Question6", 1],
  ["Question1", 2],
  ["Question2", 2],
  ["Question3", 2],
  ["Question4", 2],
  ["Question5", 2],
  ["Question6", 2],
  ["Question1", 3],
  ["Question2", 3],
  ["Question3", 3],
  ["Question4", 3],
  ["Question5", 3],
  ["Question6", 3],
  ["Question1", 4],
  ["Question2", 4],
  ["Question3", 4],
  ["Question4", 4],
  ["Question5", 4],
  ["Question6", 4],
]

answer_list = [
  ["Answer", true, 1],
  ["WrongAnswer1", false, 1],
  ["WrongAnswer2", false, 1],
  ["WrongAnswer3", false, 1],
  ["Answer", true, 2],
  ["WrongAnswer1", false, 2],
  ["WrongAnswer2", false, 2],
  ["WrongAnswer3", false, 2],
  ["Answer", true, 3],
  ["WrongAnswer1", false, 3],
  ["WrongAnswer2", false, 3],
  ["WrongAnswer3", false, 3],
  ["Answer", true, 4],
  ["WrongAnswer1", false, 4],
  ["WrongAnswer2", false, 4],
  ["WrongAnswer3", false, 4],
  ["Answer", true, 5],
  ["WrongAnswer1", false, 5],
  ["WrongAnswer2", false, 5],
  ["WrongAnswer3", false, 5],
  ["Answer", true, 6],
  ["WrongAnswer1", false, 6],
  ["WrongAnswer2", false, 6],
  ["WrongAnswer3", false, 6],
  ["Answer", true, 7],
  ["WrongAnswer1", false, 7],
  ["WrongAnswer2", false, 7],
  ["WrongAnswer3", false, 7],
  ["Answer", true, 8],
  ["WrongAnswer1", false, 8],
  ["WrongAnswer2", false, 8],
  ["WrongAnswer3", false, 8],
  ["Answer", true, 9],
  ["WrongAnswer1", false, 9],
  ["WrongAnswer2", false, 9],
  ["WrongAnswer3", false, 9],
  ["Answer", true, 10],
  ["WrongAnswer1", false, 10],
  ["WrongAnswer2", false, 10],
  ["WrongAnswer3", false, 10],
  ["Answer", true, 11],
  ["WrongAnswer1", false, 11],
  ["WrongAnswer2", false, 11],
  ["WrongAnswer3", false, 11],
  ["Answer", true, 12],
  ["WrongAnswer1", false, 12],
  ["WrongAnswer2", false, 12],
  ["WrongAnswer3", false, 12],
  ["Answer", true, 13],
  ["WrongAnswer1", false, 13],
  ["WrongAnswer2", false, 13],
  ["WrongAnswer3", false, 13],
  ["Answer", true, 14],
  ["WrongAnswer1", false, 14],
  ["WrongAnswer2", false, 14],
  ["WrongAnswer3", false, 14],
  ["Answer", true, 15],
  ["WrongAnswer1", false, 15],
  ["WrongAnswer2", false, 15],
  ["WrongAnswer3", false, 15],
  ["Answer", true, 16],
  ["WrongAnswer1", false, 16],
  ["WrongAnswer2", false, 16],
  ["WrongAnswer3", false, 16],
  ["Answer", true, 17],
  ["WrongAnswer1", false, 17],
  ["WrongAnswer2", false, 17],
  ["WrongAnswer3", false, 17],
  ["Answer", true, 18],
  ["WrongAnswer1", false, 18],
  ["WrongAnswer2", false, 18],
  ["WrongAnswer3", false, 18],
  ["Answer", true, 19],
  ["WrongAnswer1", false, 19],
  ["WrongAnswer2", false, 19],
  ["WrongAnswer3", false, 19],
  ["Answer", true, 20],
  ["WrongAnswer1", false, 20],
  ["WrongAnswer2", false, 20],
  ["WrongAnswer3", false, 20],
  ["Answer", true, 21],
  ["WrongAnswer1", false, 21],
  ["WrongAnswer2", false, 21],
  ["WrongAnswer3", false, 21],
  ["Answer", true, 22],
  ["WrongAnswer1", false, 22],
  ["WrongAnswer2", false, 22],
  ["WrongAnswer3", false, 22],
  ["Answer", true, 23],
  ["WrongAnswer1", false, 23],
  ["WrongAnswer2", false, 23],
  ["WrongAnswer3", false, 23],
  ["Answer", true, 24],
  ["WrongAnswer1", false, 24],
  ["WrongAnswer2", false, 24],
  ["WrongAnswer3", false, 24],
]

quiz_list.each do |name|
  Quiz.create( name: name )
end

question_list.each do |question_asked, quiz_id|
  Question.create( question_asked: question_asked, quiz_id: quiz_id )
end

answer_list.each do |possible_answer, is_correct, question_id|
  Answer.create( possible_answer: possible_answer, is_correct: is_correct, question_id: question_id )
end