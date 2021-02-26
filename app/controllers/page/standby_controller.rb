class Page::StandbyController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
  end
end
