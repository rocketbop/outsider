class PlannerController < ApplicationController
  def index
  	@locations = Location.order(:title)
  end
end
