require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "idea attributes must not be empty" do
    idea = Idea.new
    assert idea.invalid?
    assert idea.errors[:description].any?
  end
end
