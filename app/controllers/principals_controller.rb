class PrincipalsController < ApplicationController
  before_action :set_principal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @principals = Principal.all
    respond_with(@principals)
  end

  def show
    respond_with(@principal)
  end

  def new
    @principal = Principal.new
    respond_with(@principal)
  end

  def edit
  end

  def create
    @principal = Principal.new(principal_params)
    @principal.save
    respond_with(@principal)
  end

  def update
    @principal.update(principal_params)
    respond_with(@principal)
  end

  def destroy
    @principal.destroy
    respond_with(@principal)
  end

  private
    def set_principal
      @principal = Principal.find(params[:id])
    end

    def principal_params
      params.require(:principal).permit(:academico, :nombre, :apellido)
    end
end
