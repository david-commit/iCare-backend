class AppointmentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

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

 def destroy
  app = Appointment.find_by(id: params[:id])
  if app
   app.delete
   head :no_content
  else
   render json: { error: "Not authorized" }, status: :unauthorized
  end
 end

 private

 def app_params
  params.permit(:patient_id, :practitioner_id, :duration, :appointment_type)
  # Use created_at as booking date
 end

 def render_record_invalid_response(e)
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
 end

end
