class ApplicationController < ActionController::Base
    
    
# 디바이스 회원가입 파라미터 추가
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_action :verify_authenticity_token
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :standard])
  end
end
