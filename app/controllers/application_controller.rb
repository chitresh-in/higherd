class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
  
  # Redirect after sign in
  def after_sign_in_path_for(resource)
    if resource.class == User
      user_home_index_path
    elsif resource.class == Employer
      employer_home_index_path
    elsif resource.class == PlacementCell
      placement_cell_home_index_path
    end 
  end

  # Redirect after sign out
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user      
      new_user_session_path
    elsif resource_or_scope == :employer
      new_employer_session_path
    elsif resource_or_scope == :placement_cell
      new_placement_cell_session_path
    end 
  end



  protected

  def configure_permitted_parameters
    
    if resource_class == Employer
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :about])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :about])
    elsif resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :about])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :about])
    elsif resource_class == PlacementCell
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    end
  end
end
