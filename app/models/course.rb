class Course < ActiveRecord::Base
  belongs_to :student
  belongs_to :career
  belongs_to :calendar
  has_many :academics
end
