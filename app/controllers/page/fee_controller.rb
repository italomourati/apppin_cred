class Page::FeeController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
  end
  
  # GET /users_office/contacts/new
  def new
    @users_office_footers = UsersOffice::Footer.all
    @users_office_fee = UsersOffice::Fee.new
  end
   
end
