class BeansController < ApplicationController
  def index
   
      if params[:roast]
        @beans = Bean.where(roast: params[:roast])
      else
      @beans = Bean.all  
    end      
  end
  def show
    @bean = Bean.find(params[:id])
  end
  def new
    @bean = Bean.new
  end
  def create
    @bean = Bean.new(params.require(:bean).permit(:name, :roast, :origin, :year_roasted, :quantity))

    if @bean.save
      redirect_to beans_path
    else 
      render "new"
    end
  end
end
