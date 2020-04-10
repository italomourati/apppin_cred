class UsersOffice::TariffsController < UsersOfficeController
  before_action :set_users_office_tariff, only: [:show, :edit, :update, :destroy]

  # GET /users_office/tariffs
  # GET /users_office/tariffs.json
  def index
    @users_office_tariffs = UsersOffice::Tariff.all
  end

  # GET /users_office/tariffs/1
  # GET /users_office/tariffs/1.json
  def show
  end

  # GET /users_office/tariffs/new
  def new
    @users_office_tariff = UsersOffice::Tariff.new
  end

  # GET /users_office/tariffs/1/edit
  def edit
  end

  # POST /users_office/tariffs
  # POST /users_office/tariffs.json
  def create
    @users_office_tariff = UsersOffice::Tariff.new(users_office_tariff_params)

    respond_to do |format|
      if @users_office_tariff.save
        format.html { redirect_to @users_office_tariff, notice: 'Tariff was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_tariff }
      else
        format.html { render :new }
        format.json { render json: @users_office_tariff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/tariffs/1
  # PATCH/PUT /users_office/tariffs/1.json
  def update
    respond_to do |format|
      if @users_office_tariff.update(users_office_tariff_params)
        format.html { redirect_to @users_office_tariff, notice: 'Tariff was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_tariff }
      else
        format.html { render :edit }
        format.json { render json: @users_office_tariff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/tariffs/1
  # DELETE /users_office/tariffs/1.json
  def destroy
    @users_office_tariff.destroy
    respond_to do |format|
      format.html { redirect_to users_office_tariffs_url, notice: 'Tariff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_tariff
      @users_office_tariff = UsersOffice::Tariff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_tariff_params
      params.require(:users_office_tariff).permit(:title, :content)
    end
end
