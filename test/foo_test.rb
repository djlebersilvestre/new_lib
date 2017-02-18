require_relative 'test_helper'

class FooTest < Minitest::Test
  def test_params_initialization
    foo = Foo.new(p1: :p1, p2: :p2)

    assert_equal :p1, foo.p1
    assert_equal :p2, foo.p2
  end

  def test_valid
    foo = Foo.new

    refute foo.valid?
    assert_includes foo.errors.full_messages, "P1 can't be blank"
    assert_includes foo.errors.full_messages, "P2 can't be blank"

    foo.p1 = :a
    foo.p2 = :b
    assert foo.valid?
  end
end
