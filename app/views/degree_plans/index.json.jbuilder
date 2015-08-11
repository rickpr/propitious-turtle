json.array!(@degree_plans) do |degree_plan|
  json.extract! degree_plan, :id, :department_id, :name, :kind
  json.url degree_plan_url(degree_plan, format: :json)
end
