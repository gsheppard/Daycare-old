json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id
  json.url pokemon_url(pokemon, format: :json)
end
