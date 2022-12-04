class CaregiversController < ApplicationController

 def index
  # Only logged in users: patients or practitioners
  care = Caregiver.all
  render json: care, status: :ok
 end

 def create
  # Only logged in practitioner
  care = Caregiver.create!(caregiver_params)
  render json: care, status: :created
 end

 private

 def caregiver_params
  params.permit(:name, :phone, :relation)
 end

end

# A user can:
# > See al list of all caregivers

# A logged in user can:
# > Add a caregiver