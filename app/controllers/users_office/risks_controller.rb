class UsersOffice::RisksController < UsersOfficeController
  before_action :set_users_office_risk, only: [:show, :edit, :update, :destroy]

  # GET /users_office/risks
  # GET /users_office/risks.json
  def index
    @users_office_risks = UsersOffice::Risk.all
  end

  # GET /users_office/risks/1
  # GET /users_office/risks/1.json
  def show
  end

  # GET /users_office/risks/new
  def new
    @users_office_risk = UsersOffice::Risk.new
  end

  # GET /users_office/risks/1/edit
  def edit
  end

  # POST /users_office/risks
  # POST /users_office/risks.json
  def create
    @users_office_risk = UsersOffice::Risk.new(users_office_risk_params)

    respond_to do |format|
      if @users_office_risk.save
        format.html { redirect_to @users_office_risk, notice: 'Risk was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_risk }
      else
        format.html { render :new }
        format.json { render json: @users_office_risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/risks/1
  # PATCH/PUT /users_office/risks/1.json
  def update
    respond_to do |format|
      if @users_office_risk.update(users_office_risk_params)
        format.html { redirect_to @users_office_risk, notice: 'Risk was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_risk }
      else
        format.html { render :edit }
        format.json { render json: @users_office_risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/risks/1
  # DELETE /users_office/risks/1.json
  def destroy
    @users_office_risk.destroy
    respond_to do |format|
      format.html { redirect_to users_office_risks_url, notice: 'Risk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_risk
      @users_office_risk = UsersOffice::Risk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_risk_params
      params.require(:users_office_risk).permit(:title, :content)
    end
end
