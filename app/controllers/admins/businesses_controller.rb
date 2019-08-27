module Admins
  class BusinessesController < BaseController
    skip_before_action :check_business
    before_action :check_eligibility, only: [:new, :create]

    def new
      @business = Business.new
    end

    def edit
      @business = current_business
    end

    def create
      @business = Business.new(business_params)
      ActiveRecord::Base.transaction do
        if @business.save
          current_admin.update(business: @business)
          redirect_to admins_openings_path, flash: {success: 'Business created'}
        else
          render 'new'
        end
      end
    end

    def update
      @business = current_admin.business
      if @business.update(business_params)
        redirect_to admins_openings_path, flash: {success: 'Business updated'}
      else
        render 'edit'
      end
    end

    private

    def business_params
      params.require(:business).permit(:name)
    end

    def check_eligibility
      if current_business.present?
        redirect_to admins_openings_path, 
          flash: {danger: "You can't create another business"}
        return
      end
    end
  end
end