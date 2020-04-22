class Page::WhoController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_whos = UsersOffice::Who.all
  end
end
