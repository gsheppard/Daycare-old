json.array!(@daycares) do |daycare|
  json.extract! daycare, :id, :user_id, :pokemon_id, :hp_iv, :atk_iv
  json.url daycare_url(daycare, format: :json)
end
