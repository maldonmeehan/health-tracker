class ActivitiesController < ApplicationController
  def new
    @entry = Entry.find(params[:entry_id])
    @activity = @entry.activities.new
  end

  def create
    @entry = Entry.find(params[:entry_id])
    @activity = @entry.activities.new(activity_params)
    if @activity.save
      redirect_to entry_path(@activity.entry)
    else
      render :new
    end
  end

private
  def activity_params
    params.require(:activity).permit(:step, :calorie, :minute)
  end

end
