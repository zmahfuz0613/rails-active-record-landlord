# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Tenant.destroy_all
Apartment.destroy_all

apt_one = Apartment.create!(
  address: "123 fake street",
  monthly_rent: 1000,
  sqft: 2000,
  num_beds: 7,
  num_baths: "1",
  allows_pets: true,
)

apt_two = Apartment.create!(
  address: "777 flower square",
  monthly_rent: 1000,
  sqft: 2000,
  num_beds: 7,
  num_baths: 1,
  allows_pets: true,
)

apt_three = Apartment.create!(
  address: "13 peachtree blvd",
  monthly_rent: 1000,
  sqft: 2000,
  num_beds: 7,
  num_baths: 1,
  allows_pets: true,
)

puts "#{Apartment.count} were created"

Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_one,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_one,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_one,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_three,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_one,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: apt_one,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: nil,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: nil,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: nil,
)
Tenant.create!(
  first_name: "John",
  last_name: "Doe",
  ssn: "123-45-6789",
  has_pets: false,
  apartment: nil,
)

puts "#{Tenant.count} were created"

tenants = Tenant.all

apt_1_tenants = apt_one.tenants

apt_two.monthly_rent = 20
apt_two.save

apt_two.update(allows_pets: false)

Tenant.last.destroy
