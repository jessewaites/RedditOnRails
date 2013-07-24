class CommentsController < ApplicationController
  # This :authenticat_user! is provide by devise
  # it will redirect user to sign_up path if they
  # are not signed in. It checks to see if user
  # has a valid session
  before_filter :authenticate_user!, only: [:create]

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end

end
