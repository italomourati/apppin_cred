class Page::EducationController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_educations = UsersOffice::Education.all
  end
end
