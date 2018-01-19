class InvoicesController < ApplicationController
    before_action :logged_in_user, only: [:new, :create]

    def new
    @invoice = Invoice.new
    end

    def index 
        @user = current_user
		@users = User.paginate(page: params[:page])
        @bookings = Booking.all
		@invoice = Invoice.all
    end
    
    def create
        @invoice = Invoice.new(invoice_params)
        if @invoice.save
        
            flash[:success] = "Invoice Submitted"
            redirect_to invoices_path           
    
      # Handle a successful save.
    else
      render 'new'
    end
    end

    def destroy
        @invoice = Invoice.find(params[:id]).destroy
        flash[:success] = "Invoice deleted"
        redirect_to User.find(@invoice.user_id)
    end
    
private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
        else

      end
    end

    def invoice_params
        params.require(:invoice).permit(:user_id, :cost, :comment)
    end

	def total_invoice
		
	end
end
