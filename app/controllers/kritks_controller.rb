class KritksController < ApplicationController
  def index
    @kritks = Kritk.all
  end
  
  def show
    @kritk = Kritk.find(params[:id])
  end
  
  def new
    @kritk = Kritk.new
  end
  
  def create
    @kritk = Kritk.new(params[:kritk])
    if @kritk.save
      flash[:notice] = "Successfully created kritk."
      redirect_to @kritk
    else
      render :action => 'new'
    end
  end
  
  def edit
    @kritk = Kritk.find(params[:id])
  end
  
  def update
    @kritk = Kritk.find(params[:id])
    if @kritk.update_attributes(params[:kritk])
      flash[:notice] = "Successfully updated kritk."
      redirect_to @kritk
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @kritk = Kritk.find(params[:id])
    @kritk.destroy
    flash[:notice] = "Successfully destroyed kritk."
    redirect_to kritks_url
  end
end
