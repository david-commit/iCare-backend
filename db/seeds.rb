# puts "Destroying all..."
# Caregiver.destroy_all
# Patient.destroy_all
# Practitioner.destroy_all
# Appointment.destroy_all

puts "Start seeding..."
puts "Caregivers.."
Caregiver.create!(name: "Brian Mwangi", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Nurse - Brother") #, patient_id: rand(1..9))
Caregiver.create!(name: "Mary Mukuna", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Doctor - Sister") #, patient_id: rand(1..9))
Caregiver.create!(name: "Maisy Avril", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Nurse - Mother") #, patient_id: rand(1..9))
Caregiver.create!(name: "Eva Nuru Bobo", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Doctor - Mother") #, patient_id: rand(1..9))
Caregiver.create!(name: "Hilary Laaban", phone: Faker::PhoneNumber.cell_phone_in_e164, relation: "Nirse - Father") #, patient_id: rand(1..9))

puts "Patients.."
Patient.create!(name: "Mike", password: "Mike", password_confirmation: "Mike", condition: "Celebral Palsy", caregiver_id: rand(1..5))
Patient.create!(name: "Kwame", password: "Kwame", password_confirmation: "Kwame", condition: "ADHD", caregiver_id: rand(1..5))
Patient.create!(name: "Yvonne", password: "Yvonne", password_confirmation: "Yvonne" ,condition: "Autism", caregiver_id: rand(1..5))
Patient.create!(name: "Zuri", password: "Zuri", password_confirmation: "Zuri", condition: "Erbs palsy", caregiver_id: rand(1..5))
Patient.create!(name: "Chidi", password: "Chidi", password_confirmation: "Chidi", condition: "Reflexes", caregiver_id: rand(1..5))
Patient.create!(name: "Maina", password: "Maina", password_confirmation: "Maina", condition: "Down syndrome", caregiver_id: rand(1..5))
Patient.create!(name: "Mwilu", password: "Mwilu", password_confirmation: "Mwilu", condition: "Celebral Palsy", caregiver_id: rand(1..5))
Patient.create!(name: "Maaureen", password: "Maureen", password_confirmation: "Maureen", condition: "Autism", caregiver_id: rand(1..5))
Patient.create!(name: "Alex", password: "Alex", password_confirmation: "Alex", condition: "Down syndrome", caregiver_id: rand(1..5))

puts "Practitioners.."
Practitioner.create!(name: "Dr. Mila Nicks", speciality: "General Practice")
Practitioner.create!(name: "Dr. Kelsey Pallotto", speciality: "Bones")
Practitioner.create!(name: "Dr. Julio Chaffee", speciality: "Pediatrics")
Practitioner.create!(name: "Dr. Charlie Bertorelli", speciality: "Nutrition")
Practitioner.create!(name: "Dr. Mary Mukuna", speciality: "Physician")

puts "Appointments.."
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "2 hours", appointment_type: "Consultation")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1 hours", appointment_type: "Physiotherapy")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "3 hours", appointment_type: "Blood draw")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1.5 hours", appointment_type: "General health")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1 hours", appointment_type: "Nutrition balancing")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1 hours", appointment_type: "Consultation")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1 hours", appointment_type: "Bone checkup")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "1.5 hours", appointment_type: "Dentistry")
Appointment.create!(patient_id: rand(1..9), practitioner_id: rand(1..5), duration: "2 hours", appointment_type: "Dermatology")

puts "Done seeding!"