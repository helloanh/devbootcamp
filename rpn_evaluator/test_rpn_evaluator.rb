require 'test/unit'
require_relative 'rpn_evaluator'


class TestRpnEvaluator < Test::Unit::TestCase

  def setup
    @calc = RpnEvaluator.new
  end

  def test_single_entry
    assert_equal 1, @calc.evaluate("1")
    assert_equal 44, @calc.evaluate("44")
  end

  def test_ascii_to_int
    assert_instance_of Fixnum, @calc.ascii_to_i("22")
    assert_equal 22, @calc.ascii_to_i("22")
  end

  def test_simple_operations
    assert_equal 3, @calc.evaluate("1 2 +")
    assert_equal 9, @calc.evaluate("13 4 -")
    assert_equal 8, @calc.evaluate("4 2 *")
    assert_equal 2, @calc.evaluate("4 2 /")
  end

  def test_muliple_operands
    assert_equal 14, @calc.evaluate("2 3 4 + *")
    assert_equal 77, @calc.evaluate("3 4 + 5 6 + *")
  end

  def test_error_messages_for_invalid_input
    assert_equal "not enough arguments", @calc.evaluate("1 +")
    assert_equal "invalid number", @calc.evaluate("a b +")
  end

  def test_error_message_for_number_input
    assert_equal "input is not a string", @calc.evaluate(44)
  end

  def test_trollish_snowman_input
      assert_equal "invalid input", @calc.evaluate("\u2603")
  end
end

