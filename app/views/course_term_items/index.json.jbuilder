json.array!(@course_term_items) do |course_term_item|
  json.extract! course_term_item, :id, :course_id, :term_item_id
  json.url course_term_item_url(course_term_item, format: :json)
end
