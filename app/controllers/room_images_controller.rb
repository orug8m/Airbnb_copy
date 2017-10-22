class RoomImagesController < ApplicationController

  def create
    @roomimage = RoomImage.new(roomimage_params)
    if  @roomimage.save
      redirect_to edit_room_path(id: params[:room_id]), notice:"予約が完了しました"

    else
      # render edit_room_path(id: params[:room_id])
    end
  end
  private
  def roomimage_params
      params.require(:room_image).permit(:title, :image, :room_id)
  end
end
