class SharesController < ApplicationController
  def index
    @rooms = Room.all
    @tags = Tag.all
  end
end
