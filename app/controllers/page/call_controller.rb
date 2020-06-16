class Page::CallController < PageController
  def index
    @users_office_calls = UsersOffice::Call.all
    @users_office_footers = UsersOffice::Footer.all
  end
end
