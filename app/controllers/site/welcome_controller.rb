class Site::WelcomeController < SiteController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_products = UsersOffice::Product.all
    @users_office_whos = UsersOffice::Who.all
    @users_office_images = UsersOffice::Image.all
  end
end
