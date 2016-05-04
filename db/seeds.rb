# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


















quiz_list = [
  "Ruby Basics", "Intermediate Ruby", "Hard as a Ruby", "Polish Them Gems"
]

question_list = [
  ["For an array \"x = [1, 2, 3, 4]\", which does not return the value 4?", 1],
  ["How do you determine the type of an object in ruby?", 1],
  ["What will return the number of characters in \"QuizCode\"?", 1],
  ["Which is not a valid ruby variable?", 1],
  ["Which of the following will not add a 4 to array x?", 1],
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
  ["x.last", false, 1],
  ["x[-1]", false, 1],
  ["x[3]", false, 1],
  ["x[4]", true, 1],
  [".type", false, 2],
  [".inspect", false, 2],
  [".method", false, 2],
  [".class", true, 2],
  [".length", true, 3],
  [".string", false, 3],
  [".count", false, 3],
  [".chars", false, 3],
  ["!name", true, 4],  
  ["@name", false, 4],
  ["$name", false, 4],
  ["name", false, 4],
  ["x << 4", false, 5],
  ["x + 4", true, 5],
  ["x[3] = 4", false, 5],
  ["x.push 4", false, 5],
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