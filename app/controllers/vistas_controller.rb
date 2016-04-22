class VistasController < ApplicationController
  def index
    @courses = Course.all
  end
  def show
    @course = Course.find_by id: params[:id]
    #@course = Course.find_by id: params[:id]
  end
end
