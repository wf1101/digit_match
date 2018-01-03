require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/digit_match'

describe "digit match" do
  describe "test 1" do
    it "4 digits match" do
      digit_match(1072503891, 62530841).must_equal 4
    end
  end

  describe "test 2" do
    it "10 digits match" do
      digit_match(3862947593, 3862947593).must_equal 10
    end
  end

  describe "test 3" do
    it "5 digits match" do
      digit_match(1062503891, 62530841).must_equal 5
    end
  end

  describe "test 4" do
    it "0 digits match" do
      digit_match(4567, 45678).must_equal 0
    end
  end
end
