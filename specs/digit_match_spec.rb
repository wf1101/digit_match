require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/digit_match'

describe "digit match" do
  describe "basic tests" do
    it "4 digits match" do
      digit_match(1072503891, 62530841).must_equal 4
    end

    it "10 digits match" do
      digit_match(3862947593, 3862947593).must_equal 10
    end

    it "5 digits match" do
      digit_match(1062503891, 62530841).must_equal 5
    end

    it "0 digits match" do
      digit_match(4567, 45678).must_equal 0
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if the parameter is an object, check for nil
    describe "nil object input test" do
      it "first input is nil" do
        digit_match(nil, 4).must_equal 0
      end

      it "second input is nil" do
        digit_match(7, nil).must_equal 0
      end
    end

    it "first input is negative" do
      digit_match(-44, 43).must_equal 0
    end

    it "second input is negative" do
      digit_match(77, -89).must_equal 0
    end
  end
end
