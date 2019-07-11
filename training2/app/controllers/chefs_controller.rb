class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def index
    @chefs = Chef.paginate(page: params[:page], per_page: 5)
  end
  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      flash[:success] = "Account was created successfully!"
      redirect_to chef_path(@chef)
    else
      render 'new'
    end
  end
  def show
    @chef = Chef.find(params[:id])

  end

  def update
    @chef = Chef.find(params[:id])
    if @chef.update(chef_params)
      flash[:success] = "Profile was updated successfully!"
      redirect_to chef_path(@chef)
    else
      render 'edit'
    end
  end


  def edit
    @chef = Chef.find(params[:id])
  end
  def destroy
    @chef = Chef.find(params[:id])
      @chef.destroy
      flash[:success] = "Profile was deleted"
      redirect_to root_path
  end
  private
  def chef_params
      params.require(:chef).permit(:chefname, :email, :password, :password_confirmation)
    end
end