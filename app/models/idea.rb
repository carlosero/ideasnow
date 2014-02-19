class Idea < ActiveRecord::Base
  # ++
  # associations
  # --
  has_and_belongs_to_many :tags

  # ++
  # validations
  # --
  validates :description, presence: true

  # ++
  # attr
  # --
  attr_reader :tag_tokens

  def tag_tokens=(ids)
    self.tag_ids = Tag.ids_from_tokens(ids)
  end

end
