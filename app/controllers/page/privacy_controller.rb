class Page::PrivacyController < PageController
  def index
    @users_office_privacies = UsersOffice::Privacy.all
    @users_office_terms = UsersOffice::Term.all
    @users_office_footers = UsersOffice::Footer.all
  end
end
