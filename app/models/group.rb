class Group < ActiveRecord::Base
  has_many :students
  has_many :catalogs
  has_many :academics
end
