class UsersOffice::CallsController < UsersOfficeController
  before_action :set_users_office_call, only: [:show, :edit, :update, :destroy]

  # GET /users_office/calls
  # GET /users_office/calls.json
  def index
    @users_office_calls = UsersOffice::Call.all
  end

  # GET /users_office/calls/1
  # GET /users_office/calls/1.json
  def show
  end

  # GET /users_office/calls/new
  def new
    @users_office_call = UsersOffice::Call.new
  end

  # GET /users_office/calls/1/edit
  def edit
  end

  # POST /users_office/calls
  # POST /users_office/calls.json
  def create
    @users_office_call = UsersOffice::Call.new(users_office_call_params)

    respond_to do |format|
      if @users_office_call.save
        format.html { redirect_to @users_office_call, notice: 'Ouvidoria criada com sucesso.' }
        format.json { render :show, status: :created, location: @users_office_call }
      else
        format.html { render :new }
        format.json { render json: @users_office_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/calls/1
  # PATCH/PUT /users_office/calls/1.json
  def update
    respond_to do |format|
      if @users_office_call.update(users_office_call_params)
        format.html { redirect_to @users_office_call, notice: 'Ouvidoria editada com sucesso' }
        format.json { render :show, status: :ok, location: @users_office_call }
      else
        format.html { render :edit }
        format.json { render json: @users_office_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/calls/1
  # DELETE /users_office/calls/1.json
  def destroy
    @users_office_call.destroy
    respond_to do |format|
      format.html { redirect_to users_office_calls_url, notice: 'Ouvidoria excluida com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_call
      @users_office_call = UsersOffice::Call.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_call_params
      params.require(:users_office_call).permit(:title, :content)
    end
end
