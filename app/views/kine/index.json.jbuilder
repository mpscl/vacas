json.array!(@kine) do |cow|
  json.extract! cow, :id, :number, :name, :age, :description, :birthday, :delivery
  json.url cow_url(cow, format: :json)
end
