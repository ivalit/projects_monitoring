class CommentsController < ApplicationController

  def create
    @comment = Comment.new comment_params

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @project, notice: 'User was successfully created.' }
        format.js   {render json: @comment}
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
