class Api::V1::LoginController < Api::V1::ApplicationController

	def attemp
		@teach = Teacher.where(user: params[:user]).where(password: params[:password])
		render json: @teach
	end

	def student
		@student = Student.where(nocontrol: params[:nocontrol]).where(password: params[:password])
		render json: @student
	end
end