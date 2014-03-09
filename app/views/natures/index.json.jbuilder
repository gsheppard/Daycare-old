json.array!(@natures) do |nature|
  json.extract! nature, :id
  json.url nature_url(nature, format: :json)
end
