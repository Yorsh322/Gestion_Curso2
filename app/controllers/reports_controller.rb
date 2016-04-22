class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@reports = Report.all
    if current_user.present?
      @reports = Report.all
    else
      @reports = Report.where teacher_id: current_teacher.id
    end
    respond_with(@reports)
  end

  def show
    respond_with(@report)
  end

  def new
    @report = Report.new
    respond_with(@report)
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    @report.save
    respond_with(@report)
  end

  def update
    @report.update(report_params)
    respond_with(@report)
  end

  def destroy
    @report.destroy
    respond_with(@report)
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:num, :grupo, :numero, :a, :epo, :esr, :e1, :c, :d, :e, :f, :g, :total, :calendar_id, :teacher_id, :subject_id, :semester_id, :career_id, :boss_id, :professor_id)
    end
end
