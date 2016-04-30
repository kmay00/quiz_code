json.array!(@questions) do |question|
  json.extract! question, :id, :title, :question, :correct_answer
  json.url question_url(question, format: :json)
end
