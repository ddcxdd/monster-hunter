
class ApplicationController < ActionController::Base
  # Prevent  attacks by raising an exception.
  protect_from_forgery with: :exception

  before_action :set
  def set
    @notes = Note.all
  end

  # For APIs, you may want to use :null_session instead.
end
