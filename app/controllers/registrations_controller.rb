class RegistrationsController < Devise::RegistrationsController
 
  def create
    build_resource
    if resource.save
      sign_up(resource_name, resource)
      flash[:notice] = "Signed up succesfully."
      render :json => {success: true}
    else
      clean_up_passwords resource
      render :json => {success: false, error: "Registration failed."}
    end
  end
 
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end
 
end