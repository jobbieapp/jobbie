class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.class == Admin
      admins_openings_path
    else
      users_openings_path
    end
  end
end
