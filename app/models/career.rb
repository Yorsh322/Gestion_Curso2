class Career < ActiveRecord::Base
  has_one :folder

  has_many :students
  has_many :professors
  has_many :courses

  has_many :reports
  has_many :catalogs
end
