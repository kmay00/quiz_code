json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer_1, :answer_2, :answer_3, :answer_4
  json.url answer_url(answer, format: :json)
end
