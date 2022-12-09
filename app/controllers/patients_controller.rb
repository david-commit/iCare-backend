class PatientsController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

 # List of all patients
 def index
  patients = Patient.all 
  render json: patients, status: :ok
 end

 # Create a new patient
 def create
  patient = Patient.create!(patient_params)
  session[:patient_id] = patient.id
  render json: patient, status: :created
 end

 # Display logged in patient info (current user)
 def show
  patient = Patient.find_by(id: session[:patient_id])
  if patient
   render json: patient, status: :ok, serializer: BookedAppSerializerSerializer
  else
   render json: { error: "Not authorized" }, status: :unauthorized
  end
 end

 private

 def patient_params
  params.permit(:name, :password, :password_confirmation, :condition, :caregiver_id)
 end

 def render_record_invalid_response(e)
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
 end

end
