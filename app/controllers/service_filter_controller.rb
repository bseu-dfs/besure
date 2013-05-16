class ServiceFilterController < ApplicationController
  def index
  	if params[:type]
  	  @company_services = Service.with_types(params[:type])
  	  if params[:service]
  		@company_services = Service.where(:name => params[:service])
  	  end
  	else
  		@company_services = Service.order(:name)
  	end
    
    @company_services = @company_services.page(params[:page]).per(10)
    @types = Type.where(:entity => params[:entity]).pluck(:name).uniq
    @services = Service.with_types(params[:type])
  end

end
