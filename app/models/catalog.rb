class Catalog < ActiveRecord::Base
  belongs_to :professor
  belongs_to :subject
  belongs_to :group
  belongs_to :semester

  belongs_to :career

  has_many :academics
  has_many :scores
end
