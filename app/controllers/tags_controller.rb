class TagsController < ApplicationController
  def index
    @tags = Tag.where('keytag LIKE(?)', "%#{params[:keyword]}%").limit(20)
    respond_to do |format|
      format.html
      format.json
    end
  end
  def new
    @tag = Tag.new
  end
  def create
    @tag = Tag.new(tag_params)
    if @tag.save
    else
      render new_tag_path
    end
  end
  def edit
    @tag = Tag.new
  end
  def update
    @tag = Tag.new
  end
  private
  def tag_params
    params.require(:tag).permit(:keytag)
  end
end
