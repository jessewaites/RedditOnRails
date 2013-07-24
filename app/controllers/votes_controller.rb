class VotesController < ApplicationController
  before_filter :authenticate_user!, only: [:create]

  
  def create
    @votes = current_user.votes
    @votes.create(params[:vote])
    redirect_to :back
  end

end
