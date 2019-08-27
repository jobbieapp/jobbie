module Users
  class OpeningsController < BaseController
    def index
      @openings = Opening.order(:business_id)
    end

    def show
      @opening = Opening.find(params[:id])
    end
  end
end
