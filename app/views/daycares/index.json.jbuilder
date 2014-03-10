json.array!(@daycares) do |daycare|
  json.extract! daycare, :id, :user_id, :pokemon_id, :hp_iv, :atk_iv, :def_iv, :spa_iv, :spd_iv, :spe_iv, :abil_id, :nature_id
  json.url daycare_url(daycare, format: :json)
end
