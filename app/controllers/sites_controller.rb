# serve up json in controller

class SitesController < ApplicationController
  rescue_from Exception, :with => :handle_500


  def handle_500
    render json: { :error => "Error" }, status: 500
  end

  # THIS WILL GET ALL POSTS
  # GET /sites
  def index
    @sites = Site.all
    render json: @sites
  end

  # THIS WILL SHOW ONE POST BASED ON PARAMS
  # GET /sites/1
  def show
    @site = Site.find(params[:id])
    render json: @site
  end

  # THIS WILL DELETE ONE POST
  def destroy
    Site.destroy(params[:id])
  end

  def create
    @site = Site.create(site_params)
    @site.save
  end

  def update
    @site = Site.find(params[:id])
    @site.update_attributes(site_params)
  end

  private

  def site_params
    params.require(:site).permit(:name, :description, :city, :state, :lat, :long, :photo)
  end

end
