class Academic < ActiveRecord::Base
  belongs_to :semester
  belongs_to :group
  belongs_to :course

  belongs_to :catalog
  has_many :scores
end
