require "application_responder"

class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  self.responder = ApplicationResponder
  respond_to :html, :xml, :json

  def index
    respond_with(@users = User.all)
  end

  def create
    @user = User.create(params[:user])
    respond_with(@user, :location => users_url)
  end

  # protect_from_forgery with: :null_session
end
