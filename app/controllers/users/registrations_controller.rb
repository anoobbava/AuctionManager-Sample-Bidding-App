class Users::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   @user = User.new(user_params)
  #   super
  #   redirect_to @user
  # end
  # def after_sign_in_path_for(resource)
  #   @user = User.find(params[:id])
  #   p "Entered after sign in path........................................"
  #   if @user.status=="Active"
  #     p "Entered condition"
  #     admin_users_path
  #   else
  #     reset_session
  #   end
  # end
  # def after_sign_up_path_for(resource)
  #   user_path(resource)
  # end
  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  # private
  # def user_params
  #   params.require(:user).permit(:first_name, :middle_name, :last_name, :email, :login_id, :password, :password_confirmation, :employee_id, :date_of_birth, :gender, :time_zone, :designation_id, :date_of_joining, :education, :comments, :work_phone)
  # end
end
