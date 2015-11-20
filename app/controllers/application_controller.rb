
class ApplicationController < ActionController::Base
<<<<<<< HEAD
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception





=======
  # Prevent  attacks by raising an exception.
  protect_from_forgery with: :exception

  before_action :set
  def set
    @notes = Note.all
  end

  # For APIs, you may want to use :null_session instead.
>>>>>>> 51bd106238ddb45c3a2ec0479a139579da57a5d5
end


