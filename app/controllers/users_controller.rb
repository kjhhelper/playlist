class UsersController < ApplicationController
  def new
    @users=User.all
    render 'new'
  end

  def create
    @user=User.create(user_params)
    if @user.valid?
    session[:user_id]=@user.id
      redirect_to '/songs/new'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/main'
    end
  end

  def show
    #user.id
    @userf=User.find(params[:id])
    @songlists=User.find(params[:id]).songs
    # binding.pry
    # @songs=User.songs
    render 'show'
  end

  private
  def user_params
    params.require(:user).permit(:f_name,:l_name,:email,:password)
  end
end
