class UsersOffice::WhosController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_who, only: [:show, :edit, :update, :destroy]

  # GET /users_office/whos
  # GET /users_office/whos.json
  def index
    @users_office_whos = UsersOffice::Who.all
  end

  # GET /users_office/whos/1
  # GET /users_office/whos/1.json
  def show
  end

  # GET /users_office/whos/new
  def new
    @users_office_who = UsersOffice::Who.new
  end

  # GET /users_office/whos/1/edit
  def edit
  end

  # POST /users_office/whos
  # POST /users_office/whos.json
  def create
    @users_office_who = UsersOffice::Who.new(users_office_who_params)

    respond_to do |format|
      if @users_office_who.save
        format.html { redirect_to @users_office_who, notice: 'Who was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_who }
      else
        format.html { render :new }
        format.json { render json: @users_office_who.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/whos/1
  # PATCH/PUT /users_office/whos/1.json
  def update
    respond_to do |format|
      if @users_office_who.update(users_office_who_params)
        format.html { redirect_to @users_office_who, notice: 'Who was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_who }
      else
        format.html { render :edit }
        format.json { render json: @users_office_who.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/whos/1
  # DELETE /users_office/whos/1.json
  def destroy
    @users_office_who.destroy
    respond_to do |format|
      format.html { redirect_to users_office_whos_url, notice: 'Who was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_who
      @users_office_who = UsersOffice::Who.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_who_params
      params.require(:users_office_who).permit(:title, :subtitle)
    end
end
