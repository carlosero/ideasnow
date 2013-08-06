class Idea < ActiveRecord::Base
  # ++
  # associations
  # --
  has_and_belongs_to_many :tags

  # ++
  # validations
  # --
  validates :description, presence: true
end
