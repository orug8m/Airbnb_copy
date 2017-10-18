class RoomBooksController < ApplicationController
  def create
    @room_book = current_user.room_books.new(reservation_params)
    if @room_book.save
      redirect_to root_path notice:"予約が完了しました"
    else
      redirect_to root_path notice:"予約が失敗しました"
    end
  end

  private
  def reservation_params
    params.require(:room_book).permit(:start_date, :end_date, :room_id, :total_guests, :requests).merge(user_id: current_user.id)
  end
end
