class AppointmentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

 def index
  app = Appointment.all 
  render json: app, status: :ok
 end

 def create
  app = Appointment.create!(app_params)
  render json: app, status: :created
 end

 def show
  app = Appointment.find(params[:id])
  render json: app, status: :ok
 end

 def destroy
  app = Appointment.find(params[:id])
  app.destroy
  head :no_content
 end

 private

 def app_params
  params.permit(:patient_id, :practitioner_id, :date, :duration, :appointment_type)
 end

 def render_record_invalid_response(e)
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
 end

end
