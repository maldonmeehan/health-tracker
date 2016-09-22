class ActivitiesController < ApplicationController
  def new
    @entry = Entry.find(params[:entry_id])
    @activity = @entry.activities.new
  end

  def create
    @entry = Entry.find(params[:entry_id])
    @activity = @entry.activities.new(activity_params)   
    if @activity.save
      flash[:notice] = "Your activity has been added!"
      redirect_to entry_path(@activity.entry)
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:entry_id])
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    flash[:notice] = "Your activity has been deleted!"
    redirect_to entry_path(@activity.entry)
  end

  def update
    @entry = Entry.find(params[:entry_id])
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      flash[:notice] = "Your activity has been edited!"
      redirect_to entry_path(@activity.entry)
    else
      render :edit
    end
  end

private
  def activity_params
    params.require(:activity).permit(:step, :calorie, :minute)
  end

end
