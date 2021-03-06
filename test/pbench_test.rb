require 'pbench/pbench'

class PbenchTest < Minitest::Test
  def test_it_calculates_the_correct_percentage
    a = ->_x{ sleep 0.002 }
    b = ->_x{ sleep 0.001 }
    assert_includes 40..60, Pbench.new(nil).performance(a, b)
  end
end
