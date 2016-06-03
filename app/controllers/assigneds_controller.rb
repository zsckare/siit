class AssignedsController < ApplicationController

	def create
		@assign = Assigned.new(assign_params)
		
		if @assign.save
		    puts "Ok"
		    render json: @assign
		else
		    puts "Not Ok"
		end

	end

	private
	def assign_params
		params.require(:assigned).permit(:subject_id,:student_id)
	end
end