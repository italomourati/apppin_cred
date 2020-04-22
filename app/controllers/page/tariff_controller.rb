class Page::TariffController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
    @users_office_tariffs = UsersOffice::Tariff.all
  end
end
