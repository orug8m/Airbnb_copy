class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_room_informationn_words

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gender, :birth_month, :birth_day, :birth_year, :tel, :currency, :city_country, :discription])
  end

  def set_room_informationn_words
    @landmark = ['美ら海水族館', '首里城', '那覇市内', '石垣島', 'ひめゆりの塔','那覇国際空港']
    @amenity = ['Heating', 'Kitchen', 'TV', 'Wireless Internet', 'Air conditioning','Buzzer/wireless intercom', 'Doorman', 'Dryer', 'Family/kid friendly', 'Hair dryer', 'Hangers', 'Indoor fireplace', 'Iron', 'Laptop friendly workspace', 'Lock on bedroom door', 'Self Check-In', 'Shampoo', 'Washer']
    @rules = ['Pets allowed', 'Smoking allowed', 'Suitable for events', 'Check in is anytime after 3PM', 'Check out by 11AM']
    @meal_time_of_day = ['Breakfast', 'Lunch', 'Box Lunch option', 'Dinner']
  end
end
