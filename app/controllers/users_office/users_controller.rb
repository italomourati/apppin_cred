class UsersOffice::UsersController < UsersOfficeController
  before_action :authenticate_user!
  before_action :verify_password, only:[:update]
  before_action :set_user , only: [:show, :edit, :update, :destroy]
   
   def index
     @users = User.all #.page(params[:page]).per(5)
   end
 
   def show
   end
 
   def edit
   end
 
   def new
    @user = User.new
   end
 
   def create
     @user = User.new(params_user)
     if @user.save()
       redirect_to users_office_users_path, notice: "Usuário Criado com Sucesso !"
     else
       render :new
     end
    
   end
 
   def destroy
 
     if @user.destroy
       redirect_to users_office_users_path, notice: "Usuário excluido com Sucesso !"
     else
       render :index
     end

     
   end
 
 
   def update
 
     if @user.update(params_user)
     redirect_to users_office_users_path, notice: "Usuário Atualizado com Sucesso !"
     else
     render :edit
     end
  
   end
 
  private
 
  def verify_password 
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
     params[:user].extract!(:password,:password_confirmation)
    end 
  end
 
  def set_user
   @user = User.find(params[:id])
  end
  
  def params_user
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
 
 end
