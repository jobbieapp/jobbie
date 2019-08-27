class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      admins_openings_path
    else
      users_openings_path
    end
  end

  def devise_parameter_sanitizer
    if resource_class == User
      UserSanitizer.new(User, :user, params)
    else
      super
    end
  end
end
