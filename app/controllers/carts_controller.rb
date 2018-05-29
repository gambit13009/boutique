class CartsController < ApplicationController

	before_action :set_cart, only: [:show, :edit, :update, :destroy, :index]

 def index
    @user = current_user
      if Item.where(user: @user)
        @total = calcul_total
      end
end


  def show
  	@item = Item.all.find_by(id: params[:id])

      respond_to do |f|
        f.js   { render :layout => false }
        f.html { redirect_to root_url }
        f.json { head :no_content }
end
  end


def new
    @cart = Cart.new
end

def edit
end

def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
end

def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end


   def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
end


private

def set_cart
      if user_signed_in? && current_user.cart
        @cart = current_user.cart
      elsif user_signed_in?
        @cart = Cart.create(user: current_user)
      elsif @cart = Cart.find_by(id: session[:cart_id])
      else
        flash.now[:notice] = "Merci de vous connecter pour accéder à cette page."
        redirect_to new_user_session_path
        # p session[:session_id]
        # @cart = Cart.create(user: session[:session_id])
        # session[:cart_id] = @cart.id
      end
end

def cart_params
      params.fetch(:cart, {})
    end

    def calcul_total
      @total = 0
      @cart.items.each do |item|
        @total += item.price
      end
      return @total
    end
end