class LinksController < ApplicationController

  def show
    
  end

  def new
    @link = Link.new
  end

  def create
    Link.create(params[:link])
  end
end
