class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.all
  end

  def import
    Prospect.import(params[:file])
    redirect_to root_url, notice: "Prospects imported."
  end
  
  def destroy
    Prospect.destroy_all
    redirect_to root_url, notice: "Prospects deleted."
  end
end
