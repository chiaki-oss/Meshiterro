class ApplicationController < ActionController::Base

    #ユーザー登録、ログイン認証などが使われる前に行われるアクション定義
	before_action :configure_permitted_parameters, if: :devise_controller?
	protected    #ユーザー登録時にデータ操作を許可
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
	end
	before_action :authenticate_user!  #ログインしてない場合はログイン画面へリダイレクトさせる
end
