json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :search_term, :location
  json.url keyword_url(keyword, format: :json)
end
