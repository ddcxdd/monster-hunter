json.array!(@hakkens) do |hakken|
  json.extract! hakken, :id, :quest_number, :quest_name, :day_night, :name, :possibility, :kiseki_name, :kiseki_number, :island
  json.url hakken_url(hakken, format: :json)
end
