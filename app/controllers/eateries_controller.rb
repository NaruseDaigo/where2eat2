class EateriesController < ApplicationController
  def new
    @eatery = Eatery.new
  end

  def create
    @eatery = Eatery.new(eatery_params)
    if @eatery.save
      flash[:success] = "#{@eatery.name}を追加しました"
      redirect_to start_path
    else
      flash[:danger] = "追加できませんでした"
      render 'new'
    end
  end

  def show
    @eatery = Eatery.find(params[:id])
  end

  def destroy
    Eatery.find(params[:id]).destroy
    flash[:success] = "Eatery deleted"
    redirect_to eateries_path
  end

  def index
    @eateries = Eatery.all
  end

  private

    def eatery_params
      params.require(:eatery).permit(:name, :address, :tel, :open, :close)
    end
end
