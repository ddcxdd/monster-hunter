json.array!(@bougus) do |bougu|
  json.extract! bougu, :id, :name, :position, :rare, :defence, :skill, :wazatama, :series, :arm_type, :max_level
  json.url bougu_url(bougu, format: :json)
end
