class Admin::TrainsController < Admin::BaseController
  before_action :set_train, only: %i[show edit update destroy]

  def index
    @trains = Train.all
  end

  def show
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @train.update(train_params)
      redirect_to [:admin, @train]
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to admin_trains_path
  end

  private
  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:number, :current_station_id, :route_id)
  end
end
