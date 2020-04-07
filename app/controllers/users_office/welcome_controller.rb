class UsersOffice::WelcomeController < UsersOfficeController
  before_action :authenticate_user!
  def index
  end
end
