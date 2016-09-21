class EntriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      flash[:notice] = "Entry successfully added!"
      redirect_to entries_path
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      flash[:notice] = "Entry successfully edited!"
      redirect_to entries_path
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:notice] = "Entry successfully deleted!"
    redirect_to entries_path
  end

private
  def entry_params
    params.require(:entry).permit(:day)
  end

end
