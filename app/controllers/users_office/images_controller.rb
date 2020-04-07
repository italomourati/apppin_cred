class UsersOffice::ImagesController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_image, only: [:show, :edit, :update, :destroy]

  # GET /users_office/images
  # GET /users_office/images.json
  def index
    @users_office_images = UsersOffice::Image.all
  end

  # GET /users_office/images/1
  # GET /users_office/images/1.json
  def show
  end

  # GET /users_office/images/new
  def new
    @users_office_image = UsersOffice::Image.new
  end

  # GET /users_office/images/1/edit
  def edit
  end

  # POST /users_office/images
  # POST /users_office/images.json
  def create
    @users_office_image = UsersOffice::Image.new(users_office_image_params)

    respond_to do |format|
      if @users_office_image.save
        format.html { redirect_to @users_office_image, notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @users_office_image }
      else
        format.html { render :new }
        format.json { render json: @users_office_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/images/1
  # PATCH/PUT /users_office/images/1.json
  def update
    respond_to do |format|
      if @users_office_image.update(users_office_image_params)
        format.html { redirect_to @users_office_image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_office_image }
      else
        format.html { render :edit }
        format.json { render json: @users_office_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/images/1
  # DELETE /users_office/images/1.json
  def destroy
    @users_office_image.destroy
    respond_to do |format|
      format.html { redirect_to users_office_images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_image
      @users_office_image = UsersOffice::Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_image_params
      params.require(:users_office_image).permit(:title, :subtitle, :content_one, :content_two, :content,:avatar)
    end
end
