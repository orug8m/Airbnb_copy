class SharesController < ApplicationController
  def index
    @rooms = Room.all
  end
end
