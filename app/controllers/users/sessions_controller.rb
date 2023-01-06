class Users::SessionsController < Devise::SessionsController
  respond_to :json
  # before_action :configure_sign_in_params, only: [:create] if: :devise_controller?

  # GET /resource/sign_in
  def new
    super
    # p 'Inside New'
    # p current_user
  end

  # POST /resource/sign_in
  def create
    super
  end

    # http://127.0.0.1:3000/login method: POST
    # {
    #   "user": {
    #     "email": "raga@example.com",
    #     "password": "password"
    #   }
    # }

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  def respond_with(resource, _opts = {})
    if resource
      render json: {
        status: { code: 200, message: 'Logged in successfully.' },
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }, status: :ok
    else
      render json: {
        status: { code: 401, message: 'Could not find user' }
      }, status: :unprocessable_entity
    end
  end

  def respond_to_on_destroy
    if current_user
      render json: {
        status: 200,
        message: 'Logged out successfully'
      }, status: :ok
    else
      render json: {
        status: 401,
        message: 'Could not find active session'
      }, status: :unauthorized
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  # end
end
