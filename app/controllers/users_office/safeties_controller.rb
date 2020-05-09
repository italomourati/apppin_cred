class UsersOffice::SafetiesController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_safety, only: [:show, :edit, :update, :destroy]

  # GET /users_office/safeties
  # GET /users_office/safeties.json
  def index
    @users_office_safeties = UsersOffice::Safety.all
  end

  # GET /users_office/safeties/1
  # GET /users_office/safeties/1.json
  def show
  end

  # GET /users_office/safeties/new
  def new
    @users_office_safety = UsersOffice::Safety.new
  end

  # GET /users_office/safeties/1/edit
  def edit
  end

  # POST /users_office/safeties
  # POST /users_office/safeties.json
  def create
    @users_office_safety = UsersOffice::Safety.new(users_office_safety_params)

    respond_to do |format|
      if @users_office_safety.save
        format.html { redirect_to @users_office_safety, notice: 'Segurança salva com sucesso.!' }
        format.json { render :show, status: :created, location: @users_office_safety }
      else
        format.html { render :new }
        format.json { render json: @users_office_safety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/safeties/1
  # PATCH/PUT /users_office/safeties/1.json
  def update
    respond_to do |format|
      if @users_office_safety.update(users_office_safety_params)
        format.html { redirect_to @users_office_safety, notice: 'Segurança atualizada com sucesso.!' }
        format.json { render :show, status: :ok, location: @users_office_safety }
      else
        format.html { render :edit }
        format.json { render json: @users_office_safety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/safeties/1
  # DELETE /users_office/safeties/1.json
  def destroy
    @users_office_safety.destroy
    respond_to do |format|
      format.html { redirect_to users_office_safeties_url, notice: 'Segurança excluida com sucesso.!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_safety
      @users_office_safety = UsersOffice::Safety.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_safety_params
      params.require(:users_office_safety).permit(:title, :content)
    end
end
