json.array!(@questions) do |question|
  json.extract! question, :id, :question_asked, :quiz_id
  json.url question_url(question, format: :json)
end
