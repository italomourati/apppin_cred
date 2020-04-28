class Page::ComplaintController < PageController
  def index
    @users_office_footers = UsersOffice::Footer.all
  end
  
  # GET /users_office/contacts/new
  def new
    @users_office_complaint = UsersOffice::Complaint.new
  end
   
end
