class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_confirmation)
    # @user = :name
  # super.Mailer.welcome_email.deliver
  end

  def account_update_params
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :current_password)
  end
end
