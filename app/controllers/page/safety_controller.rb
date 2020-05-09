class Page::SafetyController < PageController
  def index
    @users_office_safeties = UsersOffice::Safety.all
    @users_office_footers = UsersOffice::Footer.all
  end
end
