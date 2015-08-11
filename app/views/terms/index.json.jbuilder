json.array!(@terms) do |term|
  json.extract! term, :id, :degree_plan_id, :number
  json.url term_url(term, format: :json)
end
