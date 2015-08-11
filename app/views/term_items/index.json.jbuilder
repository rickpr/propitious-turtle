json.array!(@term_items) do |term_item|
  json.extract! term_item, :id, :name, :term_id
  json.url term_item_url(term_item, format: :json)
end
