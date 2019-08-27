module Users
  class JobApplicationsController < BaseController
    def create
      @opening = Opening.find(job_application_params[:opening_id])
      @job_application = current_user.job_applications.new(
        job_application_params.merge(business: @opening.business))
      if @job_application.save
        redirect_to users_openings_path, flash: {success: 'Successfully applied'}
      else
        redirect_to users_openings_path, flash: {danger: 'You have already applied to this position.'}
      end
    end

    private

    def job_application_params
      params.require(:job_application).permit(:opening_id)
    end
  end
end
