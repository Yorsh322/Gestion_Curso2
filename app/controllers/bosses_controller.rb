class BossesController < ApplicationController
  before_action :set_boss, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bosses = Boss.all
    respond_with(@bosses)
  end

  def show
    respond_with(@boss)
  end

  def new
    @boss = Boss.new
    respond_with(@boss)
  end

  def edit
  end

  def create
    @boss = Boss.new(boss_params)
    @boss.save
    respond_with(@boss)
  end

  def update
    @boss.update(boss_params)
    respond_with(@boss)
  end

  def destroy
    @boss.destroy
    respond_with(@boss)
  end

  private
    def set_boss
      @boss = Boss.find(params[:id])
    end

    def boss_params
      params.require(:boss).permit(:academico, :nombre, :apellido, :department)
    end
end
