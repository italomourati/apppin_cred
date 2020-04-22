class Page::SocioController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_repossibilities = UsersOffice::Repossibility.all
  end
end
