puts "Destroying all..."

Patient.destroy_all
Caregiver.destroy_all

puts "Start seeding..."

Caregiver.create!(name: "Brian", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Brother")
Caregiver.create!(name: "Mary", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Sister")
Caregiver.create!(name: "Maisy", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Mother")
Caregiver.create!(name: "Eva", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Mother")
Caregiver.create!(name: "Hilary", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Father")

Patient.create!(name: "Mike", condition: "Celebral Palsy", caregiver_id: rand(1..5))
Patient.create!(name: "Kwame", condition: "ADHD", caregiver_id: rand(1..5))
Patient.create!(name: "Yvonne", condition: "Autism", caregiver_id: rand(1..5))
Patient.create!(name: "Zuri", condition: "Erbs palsy", caregiver_id: rand(1..5))
Patient.create!(name: "Chidi", condition: "Reflexes", caregiver_id: rand(1..5))
Patient.create!(name: "Mark", condition: "Down syndrome", caregiver_id: rand(1..5))

puts "Done seeding!"