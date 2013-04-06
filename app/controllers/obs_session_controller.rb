class ObsSessionsController < Devise::SessionsController
  def new
    super
    redirect_to :obs_path
  end
end
