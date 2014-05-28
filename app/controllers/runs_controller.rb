class RunsController < ApplicationController 

	def index
		@runs = Run.all
		@total_distance = @runs.reduce(0) {|sum, run| sum + run.miles}
	end

	def new
		@run = Run.new
	end

	def create
		@run = Run.create(run_params)
		redirect_to @run
	end

	def show
		@run = Run.find(params[:id])
	end

	private

	def run_params
		params.require(:run).permit(:miles, :date, :comment)
	end

end
