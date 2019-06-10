class SupportsController < ApplicationController

  def index
    @supports = Support.all
  end
  
  def new
    @support = Support.new
  end

  def create
    @support = Support.new(support_params)
    if @support.valid?
      @support.save
      flash[:message] = "Thank you for contacting us."
      redirect_to schools_path
    else
      flash[:message] = @support.errors.full_messages[0]
      redirect_to support_path
    end
  end

  private
  def support_params
    params.require(:support).permit(:name, :email, :reason)
  end
end
