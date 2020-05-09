class Page::TermsController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_terms = UsersOffice::Term.all
  end
end
