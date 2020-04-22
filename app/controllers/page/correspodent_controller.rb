class Page::CorrespodentController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_correspondets = UsersOffice::Correspondet.all
  end
end
