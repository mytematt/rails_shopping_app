class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def update
    Store.find(paparms[:id]).update(store_params)
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def destroy
    Store.find(params[:id]).destroy
  end

def store_params
  params.require(:store).permit(:name, :phone, :email)
end

end
