class UsersController < ApplicationController
  
  def index 
    @users = User.sort(:updated_at.desc)
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path, :notice => 'User successfully added'
    else
      render :action =>'new'
    end
  end
  
  def edit
    @user=User.find_by_id(params[:id])
  end

  def update
    @user=User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => 'User successfully updated'
    else
     render :action =>'edit'
     end
  end
  
end