class UsersOffice::ProductsController < UsersOfficeController
  before_action :authenticate_user!
  before_action :set_users_office_product, only: [:show, :edit, :update, :destroy]

  # GET /users_office/products
  # GET /users_office/products.json
  def index
    @users_office_products = UsersOffice::Product.all
  end

  # GET /users_office/products/1
  # GET /users_office/products/1.json
  def show
  end

  # GET /users_office/products/new
  def new
    @users_office_product = UsersOffice::Product.new
  end

  # GET /users_office/products/1/edit
  def edit
  end

  # POST /users_office/products
  # POST /users_office/products.json
  def create
    @users_office_product = UsersOffice::Product.new(users_office_product_params)

    respond_to do |format|
      if @users_office_product.save
        format.html { redirect_to @users_office_product, notice: 'Produto salvo com sucesso.!' }
        format.json { render :show, status: :created, location: @users_office_product }
      else
        format.html { render :new }
        format.json { render json: @users_office_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_office/products/1
  # PATCH/PUT /users_office/products/1.json
  def update
    respond_to do |format|
      if @users_office_product.update(users_office_product_params)
        format.html { redirect_to @users_office_product, notice: 'Produto atualizado com sucesso.!' }
        format.json { render :show, status: :ok, location: @users_office_product }
      else
        format.html { render :edit }
        format.json { render json: @users_office_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_office/products/1
  # DELETE /users_office/products/1.json
  def destroy
    @users_office_product.destroy
    respond_to do |format|
      format.html { redirect_to users_office_products_url, notice: 'Produto excluido com sucesso.!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_office_product
      @users_office_product = UsersOffice::Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_office_product_params
      params.require(:users_office_product).permit(:title, :subtitle)
    end
end
