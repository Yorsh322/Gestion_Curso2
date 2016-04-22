class GruposController < ApplicationController
  def index
    @groups = Group.all
    @semesters = Semester.all

    # @category = Category.find(params[:id])
    # @posts = @category.posts.published

  end

  def show
    @course = Course.find_by id: params[:id]
  end
end
