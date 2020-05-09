class UsersOffice::TermsController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_term, only: [:show, :edit, :update, :destroy]

  # GET /users_office/terms
  # GET /users_office/terms.json
  def index
    @users_office_terms = UsersOffice::Term.all
  end

  # GET /users_office/terms/1
  # GET /users_office/terms/1.json
  def show
  end

  # GET /users_office/terms/new
  def new
    @users_office_term = UsersOffice::Term.new
  end

  # GET /users_office/terms/1/edit
  def edit
  end

  # POST /users_office/terms
  # POST /users_office/terms.json
  def create
    @users_office_term = UsersOffice::Term.new(users_office_term_params)

    respond_to do |format|
      if @users_office_term.save
        format.html { redirect_to @users_office_term, notice: 'Termo de Uso salvo com sucesso.!' }
        format.json { render :show, status: :created, location: @users_office_term }
      else
        format.html { render :new }
        format.json { render json: @users_office_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/terms/1
  # PATCH/PUT /users_office/terms/1.json
  def update
    respond_to do |format|
      if @users_office_term.update(users_office_term_params)
        format.html { redirect_to @users_office_term, notice: 'Termo de Uso atualizado com sucesso.!' }
        format.json { render :show, status: :ok, location: @users_office_term }
      else
        format.html { render :edit }
        format.json { render json: @users_office_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/terms/1
  # DELETE /users_office/terms/1.json
  def destroy
    @users_office_term.destroy
    respond_to do |format|
      format.html { redirect_to users_office_terms_url, notice: 'Termo de Uso excluido com sucesso.!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_term
      @users_office_term = UsersOffice::Term.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_term_params
      params.require(:users_office_term).permit(:title, :content)
    end
end
