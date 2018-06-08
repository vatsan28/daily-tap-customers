class CustomersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user, except: %i[
    create
  ]

  # GET /customers
  def index
    render_success('Ok that works index', :ok)
  end

  # GET /customers/1
  def show
    render_success('Ok that works show', :ok)
  end

  # POST /customers
  def create
    render_success('Ok that works', :ok)
  end

  # PATCH/PUT /customers/1
  def update
    # if @customer.update(customer_params)
    #   redirect_to @customer, notice: 'Customer was successfully updated.'
    # else
    #   render :edit
    # end
    render_success('Ok that works show update', :ok)
  end

  # DELETE /customers/1
  def destroy
    render_success('Ok that works show delete', :ok)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_customer
    #   @customer = Customer.find(params[:id])
    # end
    #
    # # Only allow a trusted parameter "white list" through.
    # def customer_params
    #   params.require(:customer).permit(:first_name, :last_name, :phone_number, :email, :password_digest)
    # end
end
