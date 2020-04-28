class Page::ContactController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
  end
  
  # GET /users_office/contacts/new
  def new
    @users_office_contact = UsersOffice::Contact.new
  end
   

end
