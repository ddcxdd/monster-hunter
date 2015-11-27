class ApplicationController < ActionController::Base
  before_action :detect_devise_variant
  # Prevent  attacks by raising an exception.
  protect_from_forgery with: :exception

  before_action :set

  def set
    @notes = Note.all
  end

  private
  def detect_devise_variant # (1)と同じ名前
    #IPHONEはデバイス名にMobileが含まれるので以下でアンドロイドとiphone以外をPCにしてる
    devise = request.user_agent
    if devise.include?("Mobile")
    else
      if devise.include?("Android")
      else
        request.variant = :PC
      end
    end
  end
  # For APIs, you may want to use :null_session instead.
end


