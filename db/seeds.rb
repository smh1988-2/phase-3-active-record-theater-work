#removes previous instances when re-seeding the db!
Audition.destroy_all
Role.destroy_all

x=0
while x < 10
Role.create({character_name: Faker::Name.name})
x+=1
end

50.times do
    Audition.create({
        actor: Faker::Name.name, 
        location:Faker::Address.city, 
        phone: Faker::PhoneNumber.phone_number, 
        hired: Faker::Boolean.boolean, 
        role_id: Faker::Number.between(from: 1, to: 10)})
end