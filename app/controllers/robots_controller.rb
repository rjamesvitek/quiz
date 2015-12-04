class RobotsController < ApplicationController

	def index
		@robots = Robot.order(:id)
	end

	def new
		@robot = Robot.new
	end

	def create
		@robot = Robot.create(robot_params)
		if @robot.valid?
			redirect_to root_path
		else
			render :new, :status => :unprocessable_entity
		end
	end

private

	def robot_params
		params.require(:robot).permit(:name, :intro)
	end

end
