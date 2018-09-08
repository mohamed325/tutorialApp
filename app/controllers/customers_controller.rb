class CustomersController < ApplicationController
  def index
  	@customers = Customer.where(approved:true)
  end

  def new
    @customer = Customer.new
  end
  	
  
  def show

  end
  def approval
    
    Customer.find(params[:id]).approve
    flash[:success] = "you are approved to be on the list!"
    redirect_to root_url
  end

  def create 
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:info] = "Fadlan sii Cumar lacagta"
      redirect_to root_url
    else
      render 'new'
    end

  end

  def destroy
    Customer.find(params[:id]).destroy
    flash[:success] = "customer deleted"
    redirect_to root_url

  end
  private

   def customer_params
    params.require(:customer).permit(:name)
   end

end
