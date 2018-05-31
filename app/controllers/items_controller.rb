class ItemsController < ApplicationController
before_action :require_admin, only: [:index, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

 
  def index
    set_user
    set_all_items
  end

 
  def show
    
  end

  def new
    @item = Item.new
  end


  def edit
    set_item
  end


  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to items_url, notice: 'Objet crée avec succès.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    set_item
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Objet mis à jour avec succès.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    set_item
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Objet supprimé avec succès.' }
      format.json { head :no_content }
    end
  end


private

    def item_params
       params.require(:item).permit(:title, :description, :price, :image_url, :item_pic, :item_pic_cache)
    end
end
