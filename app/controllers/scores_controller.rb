class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy, :edit_for_teacher]
  before_action :authenticate_user!, except: [:edit_for_teacher, :update]
  before_action :authenticate_teacher!, only: [:edit_for_teacher, :update]

  respond_to :html

  def index
    @scores = Score.all
    respond_with(@scores)
  end

  def show
    respond_with(@score)
  end

  def new
    @score = Score.new
    respond_with(@score)
  end

  def edit
  end

  def edit_for_teacher
  end

  def create
    @score = Score.new(score_params)
    @score.save
    respond_with(@score)
  end

  def update
    #@score.update(score_params)
    #respond_with(@score)
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to :back, notice: 'Cambios guardados.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @score.destroy
    respond_with(@score)
  end

  private
    def set_score
      @score = Score.find(params[:id])
    end

    def score_params
      params.require(:score).permit(:score_one, :score_two, :score_three, :score_four, :score_test, :score_final, :subject_id, :student_id, :catalog_id, :academic_id)
    end
end
