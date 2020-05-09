class UsersOffice::PrivaciesController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_privacy, only: [:show, :edit, :update, :destroy]

  # GET /users_office/privacies
  # GET /users_office/privacies.json
  def index
    @users_office_privacies = UsersOffice::Privacy.all
  end

  # GET /users_office/privacies/1
  # GET /users_office/privacies/1.json
  def show
  end

  # GET /users_office/privacies/new
  def new
    @users_office_privacy = UsersOffice::Privacy.new
  end

  # GET /users_office/privacies/1/edit
  def edit
  end

  # POST /users_office/privacies
  # POST /users_office/privacies.json
  def create
    @users_office_privacy = UsersOffice::Privacy.new(users_office_privacy_params)

    respond_to do |format|
      if @users_office_privacy.save
        format.html { redirect_to @users_office_privacy, notice: 'Politica de Privacidade salva com sucesso.!' }
        format.json { render :show, status: :created, location: @users_office_privacy }
      else
        format.html { render :new }
        format.json { render json: @users_office_privacy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/privacies/1
  # PATCH/PUT /users_office/privacies/1.json
  def update
    respond_to do |format|
      if @users_office_privacy.update(users_office_privacy_params)
        format.html { redirect_to @users_office_privacy, notice: 'Politica de Privacidade atualizada com sucesso.!' }
        format.json { render :show, status: :ok, location: @users_office_privacy }
      else
        format.html { render :edit }
        format.json { render json: @users_office_privacy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/privacies/1
  # DELETE /users_office/privacies/1.json
  def destroy
    @users_office_privacy.destroy
    respond_to do |format|
      format.html { redirect_to users_office_privacies_url, notice: 'Politica de Privacidade excluida com sucesso.!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_privacy
      @users_office_privacy = UsersOffice::Privacy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_privacy_params
      params.require(:users_office_privacy).permit(:title, :content)
    end
end
