class PractitionersController < ApplicationController

 def index
  prac = Practitioner.all
  render json: prac, status: :ok
 end

end
