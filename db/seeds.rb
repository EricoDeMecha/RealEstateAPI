# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts("Started seeding...")
# Create owners
owner1 = Owner.create(name: "John Doe", contact_details: "john.doe@example.com")
owner2 = Owner.create(name: "Jane Smith", contact_details: "jane.smith@example.com")

# Create buildings for owner1
building1 = Building.create(address: "123 Main Street", number_of_floors: 5, amenities: "Gym, Pool", owner: owner1)
building2 = Building.create(address: "456 Elm Street", number_of_floors: 3, amenities: "Parking, Elevator", owner: owner1)

# Create buildings for owner2
building3 = Building.create(address: "789 Oak Avenue", number_of_floors: 4, amenities: "Security, Rooftop", owner: owner2)

# Create units for building1
unit1 = Unit.create(number: "101", floor: 1, size: "500 sq. ft", building: building1)
unit2 = Unit.create(number: "102", floor: 1, size: "700 sq. ft", building: building1)

# Create units for building2
unit3 = Unit.create(number: "201", floor: 2, size: "600 sq. ft", building: building2)

# Create units for building3
unit4 = Unit.create(number: "301", floor: 3, size: "550 sq. ft", building: building3)
unit5 = Unit.create(number: "302", floor: 3, size: "800 sq. ft", building: building3)

# Create tenants for units
tenant1 = Tenant.create(name: "Alice Johnson", contact_details: "alice@example.com", lease_details: "1-year lease", unit: unit1)
tenant2 = Tenant.create(name: "Bob Wilson", contact_details: "bob@example.com", lease_details: "6-month lease", unit: unit2)
tenant3 = Tenant.create(name: "Eve Thompson", contact_details: "eve@example.com", lease_details: "1-year lease", unit: unit3)
tenant4 = Tenant.create(name: "Charlie Brown", contact_details: "charlie@example.com", lease_details: "1-year lease", unit: unit4)

# Create rent payments for tenants
RentPayment.create(amount: 1000, payment_date: Date.today, tenant: tenant1)
RentPayment.create(amount: 1200, payment_date: Date.today, tenant: tenant2)
RentPayment.create(amount: 900, payment_date: Date.today, tenant: tenant3)
RentPayment.create(amount: 1100, payment_date: Date.today, tenant: tenant4)

# Create utility payments for tenants
UtilityPayment.create(amount: 100, payment_date: Date.today, utility_type: "Electricity", tenant: tenant1)
UtilityPayment.create(amount: 50, payment_date: Date.today, utility_type: "Water", tenant: tenant2)
UtilityPayment.create(amount: 75, payment_date: Date.today, utility_type: "Gas", tenant: tenant3)
UtilityPayment.create(amount: 90, payment_date: Date.today, utility_type: "Electricity", tenant: tenant4)

# Create service payments for tenants
ServicePayment.create(amount: 50, payment_date: Date.today, service_type: "Cleaning", tenant: tenant1)
ServicePayment.create(amount: 75, payment_date: Date.today, service_type: "Maintenance", tenant: tenant2)
ServicePayment.create(amount: 60, payment_date: Date.today, service_type: "Cleaning", tenant: tenant3)
ServicePayment.create(amount: 80, payment_date: Date.today, service_type: "Maintenance", tenant: tenant4)

puts("End seeding")