class PatientsController < ApplicationController

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
  render json: patient, status: :created
 end

end
