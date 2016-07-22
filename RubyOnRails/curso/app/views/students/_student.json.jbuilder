json.extract! student, :id, :name, :document, :age, :created_at, :updated_at
json.url student_url(student, format: :json)