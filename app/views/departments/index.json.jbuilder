json.array!(@departments) do |department|
  json.extract! department, :id, :college_id, :acronym, :name, :org_code, :url
  json.url department_url(department, format: :json)
end
