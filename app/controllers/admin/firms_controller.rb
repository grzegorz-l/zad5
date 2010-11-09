class Admin::FirmsController < ApplicationController
  before_filter :authenticate_user!
  def index  
    @search = Firm.search(params[:search])
    @firms = @search.paginate(:page => params[:page], :per_page => 3)
  end
  
  def new
    @firm = Firm.new
  end
  
  def create
    @firm = Firm.new(params[:firm])
    @firm.save
    if @firm.save
      redirect_to admin_firms_path
    else
      render :action => "new"
    end
  end
  def edit
    @firm = Firm.find(params[:id])
  end
  
  def show
    
  end
  
   def update
    @firm = Firm.find(params[:id])
    @firm.update_attributes(params[:firm])
    redirect_to admin_firms_path
  end
  
  def destroy
    @firm = Firm.find(params[:id])
    @firm.destroy
    redirect_to :action => 'index'
  end
  

  
end
