class UsersOffice::ContactsController < UsersOfficeController
  before_action :authenticate_user! , only: [:show,:edit,:update,:destroy,:index]
  before_action :set_users_office_contact, only: [:show, :edit, :update, :destroy]

  # GET /users_office/contacts
  # GET /users_office/contacts.json
  def index
    @users_office_contacts = UsersOffice::Contact.all
    @users_office_footers = UsersOffice::Footer.all
  end

  # GET /users_office/contacts/1
  # GET /users_office/contacts/1.json
  def show
  end

  # GET /users_office/contacts/new
  def new
    @users_office_contact = UsersOffice::Contact.new
    #EmailFaleConoscoMailer.email_ouvidoria(@users_office_contact).deliver
  end

  # GET /users_office/contacts/1/edit
  def edit
  end

  # POST /users_office/contacts
  # POST /users_office/contacts.json
  def create
    @users_office_contact = UsersOffice::Contact.new(users_office_contact_params)
    respond_to do |format|
      if @users_office_contact.save
        EmailFaleConoscoMailer.email_ouvidoria(@users_office_contact).deliver
        format.html { redirect_to page_contact_index_path, notice: 'Contato, enviado com sucesso !' }
        format.json { render :show, status: :created, location: @users_office_contact }
      else
        format.html { render :new }
        format.json { render json: @users_office_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/contacts/1
  # PATCH/PUT /users_office/contacts/1.json
  def update
    respond_to do |format|
      if @users_office_contact.update(users_office_contact_params)
        format.html { redirect_to @users_office_contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_contact }
      else
        format.html { render :edit }
        format.json { render json: @users_office_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/contacts/1
  # DELETE /users_office/contacts/1.json
  def destroy
    @users_office_contact.destroy
    respond_to do |format|
      format.html { redirect_to users_office_contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_contact
      @users_office_contact = UsersOffice::Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_contact_params
      params.require(:users_office_contact).permit(:description, :email, :cpf, :dtnascimento, :phone, :state, :city, :typecontact, :content)
    end
end
