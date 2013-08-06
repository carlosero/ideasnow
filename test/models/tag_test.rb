require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "tag attributes must not be empty" do 
    tag = Tag.new
    assert tag.invalid?
    assert tag.errors[:name].any?
  end
end
