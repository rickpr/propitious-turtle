json.array!(@colleges) do |college|
  json.extract! college, :id, :year_id, :acronym, :name, :org_code, :url
  json.url college_url(college, format: :json)
end
