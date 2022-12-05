class TestsController < ApplicationController
  def index
    session[:count] = (session[:count] || 0) + 1
    render json: { count: session[:count] }
  end
end
