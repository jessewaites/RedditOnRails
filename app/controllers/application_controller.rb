class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user! except: [:index, :contact, :about, :landing, :test]
end
