class Report < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :subject
  belongs_to :semester
  belongs_to :career
  belongs_to :boss
  belongs_to :professor
end
