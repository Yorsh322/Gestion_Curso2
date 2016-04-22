class AcademicsController < ApplicationController
  before_action :set_academic, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@academics = Academic.all
    @academics = Academic.where course_id: current_student.id
    #Student.where(id: current_student)
    respond_with(@academics)
  end

  def show
    respond_with(@academic)
  end

  def new
    @academic = Academic.new
    respond_with(@academic)
  end

  def edit
  end

  def create
    @academic = Academic.new(academic_params)
    @academic.save

    #Editado por Mario Candia G.
    @academic.scores.create(student_id: @academic.course_id, subject_id: @academic.catalog_id)

    respond_with(@academic)
  end

  def update
    @academic.update(academic_params)
    respond_with(@academic)
  end

  def destroy
    @academic.destroy
    respond_with(@academic)
  end

  private
    def set_academic
      @academic = Academic.find(params[:id])
    end

    def academic_params
      params.require(:academic).permit(:subject_id, :semester_id, :group_id, :course_id, :catalog_id)
    end
end
