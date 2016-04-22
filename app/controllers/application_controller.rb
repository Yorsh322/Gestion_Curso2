class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_for_selection

  before_filter :devise_sanitizer, if: :devise_controller?

  protected
  def devise_sanitizer
    [:account_update, :sign_up].each do |action|
      devise_parameter_sanitizer.for(action) << [:clave, :control, :nombre, :apellido, :sexo, :career_id, :group_id, :semester_id]
    end
  end

  def layout_for_selection
    if controller_name == 'sessions' || controller_name == 'registrations' || controller_name == 'passwords'
      'login'
    else
      'admin'
    end
  end

end
