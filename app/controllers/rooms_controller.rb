class RoomsController < ApplicationController
  layout'host_page', only: [:new, :edit]
  # before_action :set_foom_pulldown_words, only: [:new, :create, :edit, :update]
  before_action :set_newroomdata_host, only: [:new, :create]
  before_action :set_currentroomdata_host, only: [:edit, :update]

  def index

  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
    else
      render new_room_path
    end
  end

  def edit
    @roomimage = RoomImage.new
  end

  def update
    if @current_room_data.update(room_params)
      redirect_to root_path, notice: "部屋情報を変更しました：更新成功！"
    else
      render :edit
    end
  end

  private
  def room_params
    params.require(:room).permit(:title, :price, :cleaning_cost, :vat_jst, :location, :description, :hm_rooms, :hm_bets, :hm_bathrooms, :host_id, :roomtype, :country, :rate, amenity:[], facility:[], rules:[], meal_time_of_day:[], tag_ids: [])
  end

  # def set_foom_pulldown_words
  #   @landmark = ['美ら海水族館', '首里城', '那覇市内', '石垣島', 'ひめゆりの塔','那覇国際空港']
  #   @amenity = ['Heating', 'Kitchen', 'TV', 'Wireless Internet', 'Air conditioning','Buzzer/wireless intercom', 'Doorman', 'Dryer', 'Family/kid friendly', 'Hair dryer', 'Hangers', 'Indoor fireplace', 'Iron', 'Laptop friendly workspace', 'Lock on bedroom door', 'Self Check-In', 'Shampoo', 'Washer']
  #   @rules = ['Pets allowed', 'Smoking allowed', 'Suitable for events', 'Check in is anytime after 3PM', 'Check out by 11AM']
  #   @meal_time_of_day = ['Breakfast', 'Lunch', 'Box Lunch option', 'Dinner']
  # end

  def set_newroomdata_host
    @host = Host.where(user_id: current_user.id)
  end

  def set_currentroomdata_host
    @current_room_data = Room.find(params[:id])
    @host = Host.where(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
