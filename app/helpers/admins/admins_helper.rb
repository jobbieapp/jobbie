module Admins::AdminsHelper
  def current_business
    current_admin.business
  end
end