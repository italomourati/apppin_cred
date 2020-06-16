class UsersOffice::FeesController < UsersOfficeController
  before_action :set_users_office_fee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:show,:edit,:update,:destroy,:index]
  
  # GET /users_office/fees
  # GET /users_office/fees.json
  def index
    @users_office_fees = UsersOffice::Fee.all
  end

  # GET /users_office/fees/1
  # GET /users_office/fees/1.json
  def show
  end

  # GET /users_office/fees/new
  def new
    @users_office_fee = UsersOffice::Fee.new
  end

  # GET /users_office/fees/1/edit
  def edit
  end

  # POST /users_office/fees
  # POST /users_office/fees.json
  def create
    @users_office_fee = UsersOffice::Fee.new(users_office_fee_params)

    respond_to do |format|
      if @users_office_fee.save
        format.html { redirect_to page_fee_index_path, notice: 'Denuncia Anônima salva com Sucesso.' }
        format.json { render :show, status: :created, location: @users_office_fee }
      else
        format.html { render :new }
        format.json { render json: @users_office_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/fees/1
  # PATCH/PUT /users_office/fees/1.json
  def update
    respond_to do |format|
      if @users_office_fee.update(users_office_fee_params)
        format.html { redirect_to @users_office_fee, notice: 'Denuncia Anônima atualizada com Sucesso.' }
        format.json { render :show, status: :ok, location: @users_office_fee }
      else
        format.html { render :edit }
        format.json { render json: @users_office_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/fees/1
  # DELETE /users_office/fees/1.json
  def destroy
    @users_office_fee.destroy
    respond_to do |format|
      format.html { redirect_to users_office_fees_url, notice: 'Denuncia Anônima excluida com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_fee
      @users_office_fee = UsersOffice::Fee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_fee_params
      params.require(:users_office_fee).permit(:content)
    end
end
