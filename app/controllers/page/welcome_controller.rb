class Page::WelcomeController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_products = UsersOffice::Product.all
  end
end
