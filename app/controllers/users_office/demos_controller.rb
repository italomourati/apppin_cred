class UsersOffice::DemosController < UsersOfficeController
  before_action :set_users_office_demo, only: [:show, :edit, :update, :destroy]

  # GET /users_office/demos
  # GET /users_office/demos.json
  def index
    @users_office_demos = UsersOffice::Demo.all
  end

  # GET /users_office/demos/1
  # GET /users_office/demos/1.json
  def show
  end

  # GET /users_office/demos/new
  def new
    @users_office_demo = UsersOffice::Demo.new
  end

  # GET /users_office/demos/1/edit
  def edit
  end

  # POST /users_office/demos
  # POST /users_office/demos.json
  def create
    @users_office_demo = UsersOffice::Demo.new(users_office_demo_params)

    respond_to do |format|
      if @users_office_demo.save
        format.html { redirect_to @users_office_demo, notice: 'Demo was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_demo }
      else
        format.html { render :new }
        format.json { render json: @users_office_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/demos/1
  # PATCH/PUT /users_office/demos/1.json
  def update
    respond_to do |format|
      if @users_office_demo.update(users_office_demo_params)
        format.html { redirect_to @users_office_demo, notice: 'Demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_demo }
      else
        format.html { render :edit }
        format.json { render json: @users_office_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/demos/1
  # DELETE /users_office/demos/1.json
  def destroy
    @users_office_demo.destroy
    respond_to do |format|
      format.html { redirect_to users_office_demos_url, notice: 'Demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_demo
      @users_office_demo = UsersOffice::Demo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_demo_params
      params.require(:users_office_demo).permit(:title, :content)
    end
end
