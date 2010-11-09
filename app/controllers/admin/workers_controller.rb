class Admin::WorkersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @firm = Firm.find(params[:firm_id])
    @workers = @firm.workers
  end
  
  def new
    @firm = Firm.find(params[:firm_id])
    @worker = @firm.workers.build
  end
  
  def create
    @firm = Firm.find(params[:firm_id])
    @worker = @firm.workers.build(params[:worker])
    if @worker.save
      redirect_to admin_firm_workers_path(@firm)
    else
      render :action => "new"
    end
    
  end
  

  
  def edit
    @firm = Firm.find(params[:firm_id])
    @worker = Worker.find(params[:id])
  end
  
   def update
    @firm = Firm.find(params[:firm_id])
    @worker = Worker.find(params[:id])
    @worker.update_attributes(params[:worker])
    redirect_to admin_firm_workers_path(@firm)
  end
  
  def destroy
      @firm = Firm.find(params[:firm_id]) 
      @worker = Worker.find(params[:id]) 
      @worker.destroy 
      redirect_to admin_firm_workers_path(@firm) 
  end
  
end
