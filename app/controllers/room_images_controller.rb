class RoomImagesController < ApplicationController

  def create
    @roomimage = RoomImage.new(roomimage_params)
    if  @roomimage.save
      redirect_to edit_room_path(id: params[:room_id]), notice:"uploaded"
    else
      redirect_to edit_room_path(id: params[:room_id]), error:"fdiled"
    end
  end
  private
  def roomimage_params
      params.require(:room_image).permit(:title, :image, :room_id)
  end
end
