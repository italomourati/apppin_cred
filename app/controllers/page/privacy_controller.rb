class Page::PrivacyController < PageController
  def index
    @users_office_privacies = UsersOffice::Privacy.all
    @users_office_terms = UsersOffice::Term.all
  end
end
