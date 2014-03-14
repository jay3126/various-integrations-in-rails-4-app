Messaging::ApplicationController.class_eval do

  layout "application"
  include Refinery::AuthenticatedSystem
  #include Refinery::ApplicationController::InstanceMethods
  include Refinery::Pages::InstanceMethods
  helper_method :home_page?,
                :local_request?,
                :just_installed?,
                :from_dialog?,
                :admin?,
                :login?
#  before_filter  :find_pages_for_menu, :show_welcome_page?

  skip_filter :authenticate_messaging_user!
  before_filter :login_required
  helper_method :current_messaging_user

  protected
  def login_required
    redirect_to main_app.new_refinery_user_session_path unless current_refinery_user
  end

  def current_messaging_user
    current_refinery_user
  end
end