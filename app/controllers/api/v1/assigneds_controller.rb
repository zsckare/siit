class Api::V1::AssignedsController < Api::V1::ApplicationController

	def get_subjects
		@assigneds = Assigned.where(student_id: params[:student_id])

		@subjects = []
		@scores_array = []
		i=0
		j=0
		@assigneds.each do |assign|
			puts "-------------"
			subject = Subject.find(assign.subject_id)
			puts subject.id
			@scores = Score.where(subject_id: subject.id).where(nocontrol: params[:nocontrol])
			@scores.each do |scre|
				@scores_array[j]={
					name: subject.name,
					score: scre.score
				}

			end 
			j= j+1
		end
		@subjects = {
			subject: @scores_array
		}

		render json: @scores_array
	end
end