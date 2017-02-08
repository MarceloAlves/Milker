require 'test_helper'

class MilkerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Milker::VERSION
  end
end
