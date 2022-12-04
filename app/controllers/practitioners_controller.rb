class PractitionersController < ApplicationController

 def index
  # Unlogged users can view
  prac = Practitioner.all
  render json: prac, status: :ok
 end

end
