json.array!(@arms) do |arm|
  json.extract! arm, :id, :name, :skill, :zokusei, :rare, :max_level, :series, :attack, :max_attack, :item, :item_number, :hyouka, :comment
  json.url arm_url(arm, format: :json)
end
