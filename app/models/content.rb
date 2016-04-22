class Content < ActiveRecord::Base
  belongs_to :summary

  has_many :acquisitions, dependent: :destroy

  accepts_nested_attributes_for :acquisitions,
  	reject_if: proc { |attr| attr['programa'].blank? },
  	allow_destroy: true

  has_many :learnings, dependent: :destroy
  has_many :competitions, dependent: :destroy
  has_many :standards, dependent: :destroy
  has_many :sources, dependent: :destroy

  validates :unidad, presence: true

  # def to_s
  # 	unidad
  # end
end
