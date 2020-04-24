class Page::ContactController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
  end
end
