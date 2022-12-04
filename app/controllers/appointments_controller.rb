class AppointmentsController < ApplicationController

 def index
  # ONLY logged in practitioners are authorized
  app = Appointment.all
  render json: app, status: :ok
 end

 def create
  # BOTH logged in patients and practitioners can create
  app = Appointment.create!(app_params)
  render json: app, status: :created
 end

 def show
  # Shows patient his/her booked appointments
  # Include to patient
  app = Appointment.find(params[:id])
  render json: app, status: :ok
 end

 private

 def app_params
  params.permit(:patient_id, :practitioner_id, :duration, :appointment_type)
 end

end
