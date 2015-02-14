class ValentinesController <ApplicationController
  before_action :set_valentine, only: [:edit, :show, :update, :destroy]

  def index
    @valentines = Valentine.all
  end

  def show

  end

  def new
  @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)
    if @valentine.save
      redirect_to valentines_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @valentine.update
      redirect_to valentines_path
    else
      render :edit
    end
  end

  def destroy
    @valentine.destroy
    if @valentine.destroy
      redirect_to valentines_path
    end
  end

private
  def set_valentine
    @valentine = Valentine.find(params[:id])
  end

  def valentine_params
    params.require(:valentine).permit(:title, :message)
  end
end
