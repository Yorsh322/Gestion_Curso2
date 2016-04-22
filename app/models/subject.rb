class Subject < ActiveRecord::Base
  has_one :summary

  has_many :scores
  belongs_to :semester
  has_many :catalogs

  has_one :report
end
