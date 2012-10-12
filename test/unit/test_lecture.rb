require 'helper'

class TestLecture < MiniTest::Unit::TestCase
  include University

  def test_happy_path
    assert_equal(4, Lecture.new)
  end
end
