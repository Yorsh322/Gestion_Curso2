class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@professors = Professor.all
    #@professors = Professor.where teacher_id: current_teacher.id
    if current_user.present?
      @professors = Professor.all
    else
      @professors = Professor.where teacher_id: current_teacher.id
    end
    respond_with(@professors)
  end

  def show
    respond_with(@professor)
  end

  def new
    @professor = Professor.new
    respond_with(@professor)
  end

  def edit
  end

  def create
    @professor = Professor.new(professor_params)
    @professor.save
    respond_with(@professor)
  end

  def update
    @professor.update(professor_params)
    respond_with(@professor)
  end

  def destroy
    @professor.destroy
    respond_with(@professor)
  end

  private
    def set_professor
      @professor = Professor.find(params[:id])
    end

    def professor_params
      params.require(:professor).permit(:teacher_id, :calendar_id, :career_id)
    end
end
