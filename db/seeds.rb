require 'faker'
puts("Seeding started...")

# Generate 20 owners
(1..20).each do
  Owner.create!(
    name: Faker::Name.name,
    contact_details: Faker::Address.full_address
  )
end
=begin
Generate 40 buildings
=end
(1..20).each do
  Building.create!(
    address: Faker::Address.full_address,
    number_of_floors: rand(1..20),
    amenities: %w["Swimming pool" "Gym" "Spa" "Free Wi-Fi" "Restaurant" "Bar" "Laundry service" "Parking"].sample,
    owner_id: rand(1..20)
  )
end
=begin
Generate 100 unitsUnits
=end
(1..100).each do
  Unit.create!(
    number: rand(1..100).to_s,
    floor: rand(1..20),
    building_id: rand(1..20),
    size: rand(1).to_s
  )
end

=begin
Generate Tenants
=end
(1..100).each do
  Tenant.create!(
    name: Faker::Name.name,
    contact_details: Faker::Address.full_address,
    lease_details: Faker::Subscription.subscription_term,
    unit_id: rand(1..100)
  )
end

=begin
Generate service payments
=end
(1..100).each do
  ServicePayment.create!(
    amount: Faker::Number.decimal(l_digits: 2),
    payment_date: Faker::Date.in_date_period,
    service_type: Faker::Verb.ing_form,
    tenant_id: rand(1..100)
  )
end
=begin
Generate rent payments
=end
(1..100).each do
  RentPayment.create!(
    amount: Faker::Number.decimal(l_digits: 2),
    payment_date: Faker::Date.in_date_period,
    tenant_id: rand(1..100)
  )
end

=begin
Generate utility payments
=end
(1..100).each do
  UtilityPayment.create!(
    amount: Faker::Number.decimal(l_digits: 2),
    payment_date: Faker::Date.in_date_period,
    utility_type: %w[electricity water gas  internet].sample,
    tenant_id: rand(1..100)
  )
end

puts("Seeding completed")