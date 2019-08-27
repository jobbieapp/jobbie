module Admins::AdminsHelper
  def current_business
    current_admin.business if admin_signed_in?
  end
end