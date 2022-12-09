class SessionsController < ApplicationController

 def create
  patient = Patient.find_by(name: params[:name])
  if patient&.authenticate(params[:password])
   session[:patient_id] = patient.id
   render json: patient, status: :ok
  else
   render json: { error: "Invalid username or password" }, status: :unauthorized
  end
 end

 def destroy
  if session.include? :patient_id
   session.delete :patient_id
   render json: { status: "Successfully logged out" }, status: :no_content
  else
   render json: { error: "Not authorized" }, status: :unauthorized
  end
 end

end
