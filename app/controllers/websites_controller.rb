class WebsitesController < ApplicationController
  def index
    @websites = Website.all
  end

  def import
    Website.import(params[:file_website])
    redirect_to root_url, notice: "Prospects imported."
  end
  
  def destroy
    Prospect.destroy_all
    redirect_to root_url, notice: "Prospects deleted."
  end
end