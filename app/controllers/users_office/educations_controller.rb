class UsersOffice::EducationsController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_education, only: [:show, :edit, :update, :destroy]

  # GET /users_office/educations
  # GET /users_office/educations.json
  def index
    @users_office_educations = UsersOffice::Education.all
  end

  # GET /users_office/educations/1
  # GET /users_office/educations/1.json
  def show
  end

  # GET /users_office/educations/new
  def new
    @users_office_education = UsersOffice::Education.new
  end

  # GET /users_office/educations/1/edit
  def edit
  end

  # POST /users_office/educations
  # POST /users_office/educations.json
  def create
    @users_office_education = UsersOffice::Education.new(users_office_education_params)

    respond_to do |format|
      if @users_office_education.save
        format.html { redirect_to @users_office_education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_education }
      else
        format.html { render :new }
        format.json { render json: @users_office_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/educations/1
  # PATCH/PUT /users_office/educations/1.json
  def update
    respond_to do |format|
      if @users_office_education.update(users_office_education_params)
        format.html { redirect_to @users_office_education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_education }
      else
        format.html { render :edit }
        format.json { render json: @users_office_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/educations/1
  # DELETE /users_office/educations/1.json
  def destroy
    @users_office_education.destroy
    respond_to do |format|
      format.html { redirect_to users_office_educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_education
      @users_office_education = UsersOffice::Education.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_education_params
      params.require(:users_office_education).permit(:title, :content)
    end
end
