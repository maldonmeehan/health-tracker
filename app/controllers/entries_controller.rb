class EntriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @entries = Entry.all
    @entries = Entry.order(params[:sort])
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    if @entry.save
      flash[:notice] = "Entry successfully added!"
      redirect_to entries_path
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    respond_to do |format|
      format.html { render :edit }
      format.js
    end
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
