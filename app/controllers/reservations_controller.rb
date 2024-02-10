class ReservationsController < ApplicationController

  def new
    @items = Item.all.order("created_at DESC")
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params.except(:item_id))
    if @reservation.valid?
      reservation_params[:item_id].each do |item_id|
        @reservation.items << Item.find(item_id)
      end
      @reservation.save
      redirect_to root_path
    else
      @item = Item.find(params[:item_id])
      render :new
    end
  end


  private

  def reservation_params
    params.require(:reservation).permit( :reserve_id, :fish_recipe_id, :telephone ).merge(user_id: current_user.id, item_id: params[:reservation][:item_id] )
  end



end
