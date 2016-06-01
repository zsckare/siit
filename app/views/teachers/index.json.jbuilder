json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :lastname, :user, :password
  json.url teacher_url(teacher, format: :json)
end
