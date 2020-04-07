class UsersOffice::FootersController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_footer, only: [:show, :edit, :update, :destroy]

  # GET /users_office/footers
  # GET /users_office/footers.json
  def index
    @users_office_footers = UsersOffice::Footer.all
  end

  # GET /users_office/footers/1
  # GET /users_office/footers/1.json
  def show
  end

  # GET /users_office/footers/new
  def new
    @users_office_footer = UsersOffice::Footer.new
  end

  # GET /users_office/footers/1/edit
  def edit
  end

  # POST /users_office/footers
  # POST /users_office/footers.json
  def create
    @users_office_footer = UsersOffice::Footer.new(users_office_footer_params)

    respond_to do |format|
      if @users_office_footer.save
        format.html { redirect_to @users_office_footer, notice: 'Footer was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_footer }
      else
        format.html { render :new }
        format.json { render json: @users_office_footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/footers/1
  # PATCH/PUT /users_office/footers/1.json
  def update
    respond_to do |format|
      if @users_office_footer.update(users_office_footer_params)
        format.html { redirect_to @users_office_footer, notice: 'Footer was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_footer }
      else
        format.html { render :edit }
        format.json { render json: @users_office_footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/footers/1
  # DELETE /users_office/footers/1.json
  def destroy
    @users_office_footer.destroy
    respond_to do |format|
      format.html { redirect_to users_office_footers_url, notice: 'Footer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_footer
      @users_office_footer = UsersOffice::Footer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_footer_params
      params.require(:users_office_footer).permit(:title, :subtitle, :phone_one, :phone_two, :email)
    end
end
