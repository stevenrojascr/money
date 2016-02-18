json.array!(@movements) do |movement|
  json.extract! movement, :id, :mov_class, :date, :description, :amount
  json.url movement_url(movement, format: :json)
end
