class RoomsController < ApplicationController
  layout'host_page', only: [:new, :edit]

  def index

  end

  def show

  end

  # class Post
  #   include ActiveModel::Model

  #   attr_accessor :amenities
  # end

  # class Amenity
  #   include ActiveModel::Model

  #   attr_accessor :amenity_name
  # end

  def new
    @user = User.find(1)
    @host = Host.find(1)
    # amenities = [Amenity.new(amenity_name: 'Heating'), Amenity.new(amenity_name: 'Kitchen'), Amenity.new(amenity_name: 'TV')]
    @room = Room.new
    # @form = Post.new(amenities: amenities)
  end

  # def confirm
  #   p post_parms
  # end

  def create

  end

  def edit

  end

  def update

  end
  private
  def room_params
      params.require(:room).permit().merge(user_id: current_user.id)
  end
  # def post_parms
  #   params.require(:rooms_controller_post).permit(amenities: [])
  # end
  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end
end
