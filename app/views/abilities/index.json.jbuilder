json.array!(@abilities) do |ability|
  json.extract! ability, :id
  json.url ability_url(ability, format: :json)
end
