class HomeController < ApplicationController
  def index
  end
  
  
  def write
    @new = Host.new
    @new.name = params[:name]
    @new.age = params[:age]
    @new.title = params[:title]
    @new.content = params[:content]
    @new.gender = params[:gender]
    @new.save
    
    redirect_to '/home/index'
  end
  
  def write2
    @new = Join.new
    @new.host_id = params[:hostid]
    @new.name = params[:name]
    @new.age = params[:age]
    @new.title = params[:title]
    @new.gender = params[:gender]
    @new.save
    
    redirect_to :back
  end
  
  def list
    @host = Host.all
  end
  
  def show
    @host = Host.find(params[:host_id])
    @join = @host.joins
    
    
    
    
    
    
    
  end
  
  
end

