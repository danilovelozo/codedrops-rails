# Generate 10000 records

10000.times do |i|
  Person.create(name: "Person #{i}", age: rand(100), document: "999.999.999-99", country: rand(2), favorite_color: rand(2))
end
