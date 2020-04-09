class UsersOffice::CorrespondetsController < UsersOfficeController
  before_action :set_users_office_correspondet, only: [:show, :edit, :update, :destroy]

  # GET /users_office/correspondets
  # GET /users_office/correspondets.json
  def index
    @users_office_correspondets = UsersOffice::Correspondet.all
  end

  # GET /users_office/correspondets/1
  # GET /users_office/correspondets/1.json
  def show
  end

  # GET /users_office/correspondets/new
  def new
    @users_office_correspondet = UsersOffice::Correspondet.new
  end

  # GET /users_office/correspondets/1/edit
  def edit
  end

  # POST /users_office/correspondets
  # POST /users_office/correspondets.json
  def create
    @users_office_correspondet = UsersOffice::Correspondet.new(users_office_correspondet_params)

    respond_to do |format|
      if @users_office_correspondet.save
        format.html { redirect_to @users_office_correspondet, notice: 'Correspondet was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_correspondet }
      else
        format.html { render :new }
        format.json { render json: @users_office_correspondet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/correspondets/1
  # PATCH/PUT /users_office/correspondets/1.json
  def update
    respond_to do |format|
      if @users_office_correspondet.update(users_office_correspondet_params)
        format.html { redirect_to @users_office_correspondet, notice: 'Correspondet was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_correspondet }
      else
        format.html { render :edit }
        format.json { render json: @users_office_correspondet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/correspondets/1
  # DELETE /users_office/correspondets/1.json
  def destroy
    @users_office_correspondet.destroy
    respond_to do |format|
      format.html { redirect_to users_office_correspondets_url, notice: 'Correspondet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_correspondet
      @users_office_correspondet = UsersOffice::Correspondet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_correspondet_params
      params.require(:users_office_correspondet).permit(:title, :content)
    end
end
