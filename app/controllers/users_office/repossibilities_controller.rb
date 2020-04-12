class UsersOffice::RepossibilitiesController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_repossibility, only: [:show, :edit, :update, :destroy]

  # GET /users_office/repossibilities
  # GET /users_office/repossibilities.json
  def index
    @users_office_repossibilities = UsersOffice::Repossibility.all
  end

  # GET /users_office/repossibilities/1
  # GET /users_office/repossibilities/1.json
  def show
  end

  # GET /users_office/repossibilities/new
  def new
    @users_office_repossibility = UsersOffice::Repossibility.new
  end

  # GET /users_office/repossibilities/1/edit
  def edit
  end

  # POST /users_office/repossibilities
  # POST /users_office/repossibilities.json
  def create
    @users_office_repossibility = UsersOffice::Repossibility.new(users_office_repossibility_params)

    respond_to do |format|
      if @users_office_repossibility.save
        format.html { redirect_to @users_office_repossibility, notice: 'Repossibility was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_repossibility }
      else
        format.html { render :new }
        format.json { render json: @users_office_repossibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/repossibilities/1
  # PATCH/PUT /users_office/repossibilities/1.json
  def update
    respond_to do |format|
      if @users_office_repossibility.update(users_office_repossibility_params)
        format.html { redirect_to @users_office_repossibility, notice: 'Repossibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_repossibility }
      else
        format.html { render :edit }
        format.json { render json: @users_office_repossibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/repossibilities/1
  # DELETE /users_office/repossibilities/1.json
  def destroy
    @users_office_repossibility.destroy
    respond_to do |format|
      format.html { redirect_to users_office_repossibilities_url, notice: 'Repossibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_repossibility
      @users_office_repossibility = UsersOffice::Repossibility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_repossibility_params
      params.require(:users_office_repossibility).permit(:title, :content)
    end
end
