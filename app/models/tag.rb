class Tag < ActiveRecord::Base
  # ++
  # associations
  # --
  has_and_belongs_to_many :ideas

  # ++
  # callbacks
  # --
  before_validation{|t| t.name = t.name.downcase if t.name}

  # ++
  # validations
  # --
  validates :name, presence: true
  validates_uniqueness_of :name

  def self.ids_from_tokens(ids)
    ids.split(',').map(&:squish).map(&:downcase).map do |t_id|
      tag = Tag.find_or_create_by_name(t_id) if t_id =~ /[a-z]/
      (tag && tag.id) || t_id
    end
  end
end
