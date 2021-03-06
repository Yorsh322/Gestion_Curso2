class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @releases = Release.all
    respond_with(@releases)
  end

  def show
    respond_with(@release)
  end

  def new
    @release = Release.new
    respond_with(@release)
  end

  def edit
  end

  def create
    @release = Release.new(release_params)
    @release.save
    respond_with(@release)
  end

  def update
    @release.update(release_params)
    respond_with(@release)
  end

  def destroy
    @release.destroy
    respond_with(@release)
  end

  private
    def set_release
      @release = Release.find(params[:id])
    end

    def release_params
      params.require(:release).permit(:teacher_id, :boss_id, :value_one, :value_two, :value_three, :value_four, :value_five, :value_six, :observation, :principal_id)
    end
end
