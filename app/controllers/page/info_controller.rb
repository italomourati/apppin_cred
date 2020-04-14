class Page::InfoController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_credits = UsersOffice::Credit.all
    @users_office_demos = UsersOffice::Demo.all
    @users_office_repossibilities = UsersOffice::Repossibility.all
    @users_office_risks = UsersOffice::Risk.all
    @users_office_tariffs = UsersOffice::Tariff.all
    @users_office_correspondets = UsersOffice::Correspondet.all
    @users_office_educations = UsersOffice::Education.all
    @users_office_products = UsersOffice::Product.all
  end
end
