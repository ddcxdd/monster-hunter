json.array!(@monsters) do |monster|
  json.extract! monster, :id, :name, :fire, :water, :thunder, :ice, :soil, :comment
  json.url monster_url(monster, format: :json)
end
