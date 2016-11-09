# serve up json in controller

class SitesController < ApplicationController

  #WORKING  THIS WILL GET ALL POSTS
  # GET /sites
  def index
    @sites = Site.all
    render json: @sites
  end

  #WORKING THIS WILL SHOW ONE POST BASED ON PARAMS
  # GET /sites/1
  def show
    @site = Site.find(params[:id])
    render json: @site
  end

  #WORKING THIS WILL DELETE A POST
  def destroy
    Site.destroy(params[:id])
  end

  #WORKING
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

######



end
