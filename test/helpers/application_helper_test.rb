require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "My App NewStaff"
    assert_equal full_title("Help"), "Help | My App NewStaff"
  end
end
