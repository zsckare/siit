class Api::V1::LoginController < Api::V1::ApplicationController

def attemp
	@teach = Teacher.login(params[:user],params[:password])
end

end