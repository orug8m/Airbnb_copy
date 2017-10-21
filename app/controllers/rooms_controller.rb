class RoomsController < ApplicationController
  layout'host_page', only: [:new, :edit]

  def index

  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @host = Host.where(user_id: current_user.id)
    @room = Room.new
  end

  def create
    @host = Host.where(user_id: current_user.id)
    @room = Room.new(room_params)
    if @room.save
    else
      render new_room_path
    end
  end

  def edit
    @current_room_data = Room.find(params[:id])
    @host = Host.where(user_id: current_user.id)
    @room = Room.new
  end

  def update
    if @room.update(room_params)
      redirect_to root_path, notice: "部屋情報を変更しました：更新成功！"
    else
      render :edit
    end
  end
  private
  def room_params
      params.require(:room).permit(:title, :price, :cleaning_cost, :vat_jst, :location, :description, :hm_rooms, :hm_bets, :hm_bathrooms, :host_id, :roomtype, amenity:[], facility:[], rules:[], meal_time_of_day:[])
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end
end
