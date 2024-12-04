class Users::SessionsController < Devise::SessionsController
  # GET /resource/sign_in
  def new
    render inertia: "users/login"
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user|
      user.permit(:username, :email)
    end
  end
end
