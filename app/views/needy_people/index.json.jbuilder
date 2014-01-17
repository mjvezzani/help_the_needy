json.array!(@needy_people) do |needy_person|
  json.extract! needy_person, :id, :first_name, :last_name, :age, :address, :comments, :organization
  json.url needy_person_url(needy_person, format: :json)
end
