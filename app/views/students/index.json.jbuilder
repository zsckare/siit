json.array!(@students) do |student|
  json.extract! student, :id, :name, :lastname, :nocontrol, :password
  json.url student_url(student, format: :json)
end
