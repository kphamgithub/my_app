json.array!(@lesson_vocas) do |lesson_voca|
  json.extract! lesson_voca, :id, :lesson_id, :vocabulary_id
  json.url lesson_voca_url(lesson_voca, format: :json)
end
