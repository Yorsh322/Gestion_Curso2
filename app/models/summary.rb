class Summary < ActiveRecord::Base
  belongs_to :subject
  has_many :contents
  has_one :folder
end
