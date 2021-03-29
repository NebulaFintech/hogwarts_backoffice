class HousesController < ApplicationController
  before_action :authenticate_wizard!
  before_action :set_house, only: :apply
  
  def index
    @houses = House.all.order(:id)
  end

  def apply
    @school_application = SchoolApplication.find_or_initialize_by(wizard: current_wizard)
    unless @school_application.house
      @school_application.house = @house
      @school_application.save!
    end
    redirect_to @school_application
  end

  private

    def set_house
      @house = House.find(params[:id])
    end
end
