class BookingsController < ApplicationController
    
    def show
    @booking = Booking.find(params[:id])
    end
    
    def index
        @bookings = Booking.all
     
    end
    
    def new
    @booking = Booking.new
    end
    
    def create
     @booking = Booking.new(booking_params)   
    if @booking.save
        flash[:success] = "Booking created"
        redirect_to editbooking_url
    else
      render 'new'
    end
  end
    
    def destroy
    Booking.find(params[:id]).destroy
    flash[:success] = "Booking deleted"
        redirect_to editbooking_url
    end
    
     
	
  private

    def booking_params
        params.require(:booking).permit(:user_id, :room_id, :checkin, :checkout)
    end   

end
