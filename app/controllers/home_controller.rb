class HomeController < ApplicationController
 
  def index
    @search = Firm.search(params[:search])
    @home = @search.paginate(:page => params[:page], :per_page => 3)
    end
  end


