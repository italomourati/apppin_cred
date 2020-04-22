class Page::DemoController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_demos = UsersOffice::Demo.all
  end
end
