class UsersOffice::ComplaintsController < UsersOfficeController
  before_action :authenticate_user! , only: [:show,:edit,:update,:destroy,:index]
  before_action :set_users_office_complaint, only: [:show, :edit, :update, :destroy]

  # GET /users_office/complaints
  # GET /users_office/complaints.json
  def index
    @users_office_complaints = UsersOffice::Complaint.all
  end

  # GET /users_office/complaints/1
  # GET /users_office/complaints/1.json
  def show
  end

  # GET /users_office/complaints/new
  def new
    @users_office_complaint = UsersOffice::Complaint.new
  end

  # GET /users_office/complaints/1/edit
  def edit
  end

  # POST /users_office/complaints
  # POST /users_office/complaints.json
  def create
    @users_office_complaint = UsersOffice::Complaint.new(users_office_complaint_params)

    respond_to do |format|
      if @users_office_complaint.save
        EmailFaleConoscoMailer.email_ouvidoria(@users_office_complaint).deliver
        format.html { redirect_to page_complaint_index_path, notice: 'Denuncia, salva com sucesso !.' }
        format.json { render :show, status: :created, location: @users_office_complaint }
      else
        format.html { render :new }
        format.json { render json: @users_office_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/complaints/1
  # PATCH/PUT /users_office/complaints/1.json
  def update
    respond_to do |format|
      if @users_office_complaint.update(users_office_complaint_params)
        format.html { redirect_to @users_office_complaint, notice: 'Complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_complaint }
      else
        format.html { render :edit }
        format.json { render json: @users_office_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/complaints/1
  # DELETE /users_office/complaints/1.json
  def destroy
    @users_office_complaint.destroy
    respond_to do |format|
      format.html { redirect_to users_office_complaints_url, notice: 'Complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_complaint
      @users_office_complaint = UsersOffice::Complaint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_complaint_params
      params.require(:users_office_complaint).permit(:description, :email, :cpf, :dtnascimento, :phone, :state, :city, :typecontact, :content)
    end
end
