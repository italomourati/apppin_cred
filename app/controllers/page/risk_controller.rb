class Page::RiskController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_risks = UsersOffice::Risk.all
  end
end
