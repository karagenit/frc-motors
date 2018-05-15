#!/usr/bin/env ruby

require_relative '../lib/frc-motors.rb'
require 'test/unit'

class TestQuery < Test::Unit::TestCase
  def test_cim
    assert_not_nil Motors::CIM
    assert_not_nil Motors::CIM.data
    assert_not_nil Motors::CIM.find(:torque, 1.5)
  end

  def test_mini_cim
    assert_not_nil Motors::MiniCIM
    assert_not_nil Motors::MiniCIM.data
    assert_not_nil Motors::MiniCIM.find(:torque, 0.7)
  end

  def test_bag
    assert_not_nil Motors::BAG
    assert_not_nil Motors::BAG.data
    assert_not_nil Motors::BAG.find(:torque, 0.3)
  end

  def test_775pro
    assert_not_nil Motors::Pro775
    assert_not_nil Motors::Pro775.data
    assert_not_nil Motors::Pro775.find(:torque, 0.5)
  end
end
