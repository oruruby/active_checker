require "active_checker"

class ActiveChecker::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActiveChecker
  end
end
