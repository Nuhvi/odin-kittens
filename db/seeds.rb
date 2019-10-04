require 'faker'

10.times do |i|
  Kitten.create(name: Faker::Name.name,
                age: rand(1..10),
                cuteness: rand(1..10),
                softness: rand(1..10))
end