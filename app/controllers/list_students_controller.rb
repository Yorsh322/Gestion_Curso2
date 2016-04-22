class ListStudentsController < ApplicationController
  def index
    # @catalogs = Catalog.all

    if current_user.present?
      @catalogs = Catalog.all
    else
      @catalogs = Catalog.where professor_id: current_teacher
    end

  end
end
