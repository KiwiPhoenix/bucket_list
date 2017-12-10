class ActivitiesController < ApplicationController

  def index
    @list.activities 
  end

  def show
    @activities
  end

  def create
    @activities = @list.activities.new(activity_params)
    if @activity.save
      @activity
    else
      render_error(@activity)
  end

  def update
    if @activity.update(activity_params)
      @activity
    else
      render_error(@activity)
  end

  def destroy
    @activity.destroy
  end

  private
  def activity_params
    params.require(:activity).permit(:title, :description)
end
