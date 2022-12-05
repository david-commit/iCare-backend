class PatientsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

 def index
  # Only viewbable to logged in practitioners
  patients = Patient.all 
  render json: patients, status: :ok
 end

 def show
  # Only viewable to specific logged in patient
  patient = Patient.find(params[:id])
  render json: patient, status: :ok
 end

 def create
  # Anyone can create a patient record
  patient = Patient.create!(patient_params)
  session[:patient_id] = patient.id
  render json: patient, status: :created
 end

 private

 def patient_params
  params.permit(:name, :password, :password_confirmation, :condition, :caregiver_id)
 end

  def render_record_invalid_response(e)
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
 end

end
