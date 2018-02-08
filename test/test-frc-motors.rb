#!/usr/bin/env ruby

require_relative '../lib/frc-motors.rb'
require 'test/unit'

class TestQuery < Test::Unit::TestCase
  def test_cim
    assert_not_nil Motors::CIM
    assert_not_nil Motors::CIM.find(:torque, 1.5)
  end
end
