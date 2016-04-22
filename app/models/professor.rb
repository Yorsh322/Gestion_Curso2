class Professor < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :calendar
  belongs_to :career
  has_many :catalogs
  has_many :reports
end
