class Client::BrainAreasController < ApplicationController
  def index
    response = Unirest.get("http://localhost:3000/api/brain")
    @brain_areas = response.body
    render 'index.html.erb'
  end

  def show
    brain_area_id = params[:id]
    response = Unirest.get("http://localhost:3000/api/brain/#{brain_area_id}")
    @brain_area = response.body
    render 'show.html.erb'
  end
end
