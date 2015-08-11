json.array!(@term_items) do |term_item|
  json.extract! term_item, :id, :term_id, :description, :hours, :minimum_grade, :notes
  json.url term_item_url(term_item, format: :json)
end
