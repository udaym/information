json.array!(@infomations) do |infomation|
  json.extract! infomation, :id, :first_name, :last_name, :age
  json.url infomation_url(infomation, format: :json)
end
