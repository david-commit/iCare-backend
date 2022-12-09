class CaregiversController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

 def index
  care = Caregiver.all 
  render json: care, status: :ok
 end

 def create
  care = Caregiver.create(care_params)
  render json: care, status: :created
 end

 private

 def care_params
  params.permit(:name, :phone, :relation)
 end

 def render_record_invalid_response(e)
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
 end

end
