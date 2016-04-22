class Boss < ActiveRecord::Base
  has_many :reports
  has_one :release
end
