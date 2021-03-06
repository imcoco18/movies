class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # 新規登録後のリダイレクト先を一覧へ
  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました"
      movies_path
    else
      new_registrations_path
    end
  end
  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    root_path
   end

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :name, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
