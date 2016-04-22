class Acquisition < ActiveRecord::Base
  belongs_to :content
  validates :programa, presence: true

  # def to_s
  # 	programa
  # end
end
