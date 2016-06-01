json.array!(@scores) do |score|
  json.extract! score, :id, :score, :subject_id, :nocontrol
  json.url score_url(score, format: :json)
end
