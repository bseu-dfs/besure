class TypesController < ApplicationController
  def index
  	@company = Company.find(params[:company_id])
    @types = @company.types
  end

  def create
    @company = Company.find(params[:company_id])
    @types = @company.types.create!(params[:type])

    respond_to do |format|
      format.html { redirect_to company_types_url }
      format.json { head :no_content }
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @type = Type.find(params[:type])
    @type.destroy

    respond_to do |format|
      format.html { redirect_to company_types_url }
      format.json { head :no_content }
    end
  end
end
