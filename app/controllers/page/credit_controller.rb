class Page::CreditController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_credits = UsersOffice::Credit.all
  end
end
