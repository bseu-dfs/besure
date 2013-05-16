class ServicesController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
  	@type = Type.find(params[:type_id])
    @services = @type.services
  end

  def create
    @type = Type.find(params[:type_id])
    @service = @type.services.create!(params[:service])
    @service.company = Company.find(params[:company_id])
    if @service.save
      respond_to do |format|
        format.html { redirect_to company_type_services_url }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to company_type_services_url }
      format.json { head :no_content }
    end
  end
end