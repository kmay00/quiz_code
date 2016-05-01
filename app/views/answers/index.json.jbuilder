json.array!(@answers) do |answer|
  json.extract! answer, :id, :possible_answer, :is_correct, :question_id
  json.url answer_url(answer, format: :json)
end
