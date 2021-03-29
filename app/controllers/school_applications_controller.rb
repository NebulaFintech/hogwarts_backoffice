class SchoolApplicationsController < ApplicationController
  before_action :authenticate_wizard!
  before_action :set_school_application, only: [:show, :approve, :deny]

  def index
    if current_wizard.staff?
      @school_applications = SchoolApplication.all
    else
      @school_applications = current_wizard.school_applications
    end
    @school_applications = @school_applications.joins(:wizard, :house).order(:id)
  end

  def show
  end

  def approve
    @school_application.approve
    redirect_to @school_application
  end

  def deny
    @school_application.deny
    redirect_to @school_application
  end

  private

    def set_school_application
      @school_application = SchoolApplication.find(params[:id])
    end
end
