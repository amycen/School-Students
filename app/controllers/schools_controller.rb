class SchoolsController < ApplicationController


  def index
    @schools = School.search(params[:search])
  end

  def show
    @school = School.find(params[:id])
  end


  private

  def school_params
    params.require(:school).permit(:name, :address, :search)
  end
end
