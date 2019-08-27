module Admins
  class BaseController < ApplicationController
    before_action :authenticate_admin!
    before_action :check_business

    def check_business
      if current_business.nil?
        redirect_to new_admins_business_path
      end
    end

    def current_business
      current_admin.business
    end
  end
end