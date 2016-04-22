class Release < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :boss
  belongs_to :principal
end
