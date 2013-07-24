class LinksController < ApplicationController

  def show
    
  end

  def new
    @link = Link.new
  end

  def create
   @link = Link.create(params[:link])
   if @link.errors.any?
     render "new"
   else
     redirect_to link_path(@link)
   end
  end
end
