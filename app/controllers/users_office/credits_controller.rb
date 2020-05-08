class UsersOffice::CreditsController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_credit, only: [:show, :edit, :update, :destroy]

  # GET /users_office/credits
  # GET /users_office/credits.json
  def index
    @users_office_credits = UsersOffice::Credit.all
  end

  # GET /users_office/credits/1
  # GET /users_office/credits/1.json
  def show
  end

  # GET /users_office/credits/new
  def new
    @users_office_credit = UsersOffice::Credit.new
  end

  # GET /users_office/credits/1/edit
  def edit
  end

  # POST /users_office/credits
  # POST /users_office/credits.json
  def create
    @users_office_credit = UsersOffice::Credit.new(users_office_credit_params)

    respond_to do |format|
      if @users_office_credit.save
        format.html { redirect_to @users_office_credit, notice: 'Crédito salvo com sucesso.!' }
        format.json { render :show, status: :created, location: @users_office_credit }
      else
        format.html { render :new }
        format.json { render json: @users_office_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/credits/1
  # PATCH/PUT /users_office/credits/1.json
  def update
    respond_to do |format|
      if @users_office_credit.update(users_office_credit_params)
        format.html { redirect_to @users_office_credit, notice: 'Crédito atualizado com sucesso.!' }
        format.json { render :show, status: :ok, location: @users_office_credit }
      else
        format.html { render :edit }
        format.json { render json: @users_office_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/credits/1
  # DELETE /users_office/credits/1.json
  def destroy
    @users_office_credit.destroy
    respond_to do |format|
      format.html { redirect_to users_office_credits_url, notice: 'Crédito excluido com sucesso.!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_credit
      @users_office_credit = UsersOffice::Credit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_credit_params
      params.require(:users_office_credit).permit(:title, :content)
    end
end
