json.extract! job, :id, :company_id, :title, :description, :url, :location, :active, :salary_range, :created_at, :updated_at
json.url job_url(job, format: :json)
