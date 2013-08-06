class Tag < ActiveRecord::Base
  # ++
  # associations
  # --
  has_and_belongs_to_many :ideas

  # ++
  # validations
  # --
  validates :name, presence: true
end
