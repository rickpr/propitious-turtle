json.array!(@term_item_terms) do |term_item_term|
  json.extract! term_item_term, :id, :term_id, :term_item_id
  json.url term_item_term_url(term_item_term, format: :json)
end
