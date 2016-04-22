class DetailsController < ApplicationController
  def index
    @semesters = Semester.all
  end
end
