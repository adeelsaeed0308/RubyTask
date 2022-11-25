class UsersController < ApplicationController
 
  #getting all user in json form
  def index
    users = User.all
    render json:users,status:200
  end
  #get all users
def alluser
  @users = User.all

end
  #showing user by id in json form
  def show
    user = User.find(params[:id])
    if user
      render json: user,status:200
    else
      render json:{error:"No user found"}
    end
    
  
  end
#creating new user 
  def new
    @user = User.new
  end
  def create
   @user=User.create(user_params)
      redirect_to '/'

   
  #edit user by id
    
  end
  def edit
    @user = User.find(params[:id])

  end

  #update user by id
  def update
    @user = User.find(params[:id])
     @user.update(user_params)
      
    redirect_to '/'
  
  end
  #delete user by id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end
  #getting perams 
  private
  def user_params
  params.require(:user).permit(:name,:age)
  
  end
 
end