class FoodsController < ApplicationController
  def new
    @entry = Entry.find(params[:entry_id])
    @food = @entry.foods.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @entry = Entry.find(params[:entry_id])
    @food = @entry.foods.new(food_params)
    if @food.save
      flash[:notice] = "Your food has been added!"
      redirect_to entry_path(@food.entry)
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:entry_id])
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    flash[:notice] = "Your food has been deleted!"
    redirect_to entry_path(@food.entry)
  end

  def update
    @entry = Entry.find(params[:entry_id])
    @food = Food.find(params[:id])
    if @food.update(food_params)
      flash[:notice] = "Your food has been edited!"
      redirect_to entry_path(@food.entry)
    else
      render :edit
    end
  end

  private
    def food_params
      params.require(:food).permit(:item, :calorie, :measurment)
    end

  end
