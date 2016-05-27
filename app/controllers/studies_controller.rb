class StudiesController < ApplicationController
	def index
		@studies = Study.all
		if params[:keywords].present?
			@keywords = params[:keywords]
			study_search_term = StudySearchTerm.new(@keywords)
			@studies = Study.where(
				study_search_term.where_clause,
				study_search_term.where_args) .
			order(study_search_term.order)
		else
			@studies = []

		end
		respond_to do |format|
				format.html {}
				format.json { render json: @studies }
			end
	end
end