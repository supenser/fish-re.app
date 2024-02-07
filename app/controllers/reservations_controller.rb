class ReservationsController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC")
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
  end


  private

  def reservation_params
    params.require(:reservation).permit( :reserve_id, :fish_recipe_id, :telephone ).merge(user_id: current_user.id, item_id:params[:item_id])
  end



end
