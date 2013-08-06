json.array!(@ideas) do |idea|
  json.extract! idea, :description
  json.url idea_url(idea, format: :json)
end
