class MarksController < ApplicationController
before_action :set_project, only: :show

  def show
    @marks = @project.marks
    @criteria = Criterium.all
  end

  def update
    @mark = Mark.find(params[:id])
    @mark.mark = params[:mark]
    @mark.save
    render :nothing => true
  end

end
