json.extract! applicant, :id, :name, :income, :location, :problems, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
