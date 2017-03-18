require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "smth" do
    require 'byebug'
    byebug
    Person.new(name: "xyz").save
  end
end
