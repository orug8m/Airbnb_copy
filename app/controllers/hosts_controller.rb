class HostsController < ApplicationController
  layout 'host_page'
  before_action :authenticate_user!, only: :new

  def index
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    if @host.save
    else
      render new_group_path
    end
  end

  def show
  end

  def edit

  end

  def update
  end
  private
  def host_params
      params.require(:host).permit(:first_name, :last_name, :gender, :birth_month, :birth_day, :birth_year, :email, :tel, :native_language, :currency, :city_country, :description).merge(user_id: current_user.id)
  end
  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end
end

