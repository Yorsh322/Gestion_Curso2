class Semester < ActiveRecord::Base
  belongs_to :calendar
  has_one :folder

  has_many :students
  has_many :subjects
  has_many :catalogs
  has_many :academics

  has_many :reports
end
