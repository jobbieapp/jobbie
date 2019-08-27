module Admins
  class OpeningsController < BaseController
    def index
      @openings = current_business.openings
    end

    def new
      @opening = current_business.openings.new
    end

    def edit
      @opening = current_business.openings.find(params[:id])
    end

    def show
      @opening = current_business.openings.find(params[:id])
    end

    def create
      @opening = current_business.openings.new(opening_params.merge(admin: current_admin))
      if @opening.save
        redirect_to admins_openings_path, flash: {success: 'Opening created'}
      else
        render 'new'
      end
    end

    def update
      @opening = current_business.openings.find(params[:id])
      if @opening.update(opening_params)
        redirect_to admins_openings_path, flash: {success: 'Opening updated'}
      else
        render 'edit'
      end
    end

    def destroy
      # TBD
    end

    private

    def opening_params
      params.require(:opening).permit(:title, :description)
    end
  end
end