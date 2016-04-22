module ApplicationHelper
  def set_contents
    Content.all
  end

  def set_summaries
    Summary.all
  end

  def set_subjects
    Subject.all
  end

  def full_topic(model)
    "#{model.unidad}. #{model.tema}"
  end

  def full_period(model)
    "#{model.period} #{model.year}"
  end

  def set_careers
    Career.all
  end

  def set_semesters
    Semester.all
  end

  def semesters_currents
    Semester.where(current: true)
  end

  def student_active
    Student.where(id: current_student.id)
  end

  def teacher_active
    Teacher.where(id: current_teacher.id)
  end

  def set_groups
    Group.all
  end

  def set_teachers
    Teacher.all
  end

  def set_students
    Student.all
  end

  def full_name(model)
    "#{model.nombre} #{model.apellido}"
  end

  def set_name_order(model)
    "#{model.apellido} #{model.nombre}"
  end

  def calendars_currents
    Calendar.where(status: true)
  end

  def set_professors
    Professor.all
  end

  def set_courses
    Course.all
  end

  def set_catalogs
    Catalog.all
  end

  def academics_list
    # @catalogs = Catalog.where(professor_id: current_teacher)
    # @academics = Academic.where(catalog_id: subject_id.id)
    # @catalogs = Catalog.all
    @academics = Academic.all
    # @catalogs = @catalogs.academics.find_by id: student_id

    # @academics = Academic.where(nil)
    # @academics = @academics.with_catalog(params[:catalog_id]) if params[:catalog_id].present?

    # @properties = Property.where(nil)
    # @properties = @properties.with_city(params[:city_id]) if params[:city_id].present?

    # @course = Course.find(params[:id])
    # @scores = @course.scores.find_by student_id: current_student

  end

  def catalogs_teacher
    Catalog.where(professor_id: current_teacher)
  end
end
