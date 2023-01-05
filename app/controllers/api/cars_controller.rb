class Api::CarsController < ApplicationController
  def index
    cars = Car.all
    render json: cars, status: :created, location: api_cars_path
  end
end
