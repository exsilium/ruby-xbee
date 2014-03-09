$: << File.dirname(__FILE__)
require 'test_helper'
require 'ruby-xbee'

##
# The goal of these tests is simply to instantiate the main XBee class for
# API mode access. If a device is present and configured a simple association
# check retrieval is made.
class RubyXbeeApimodeSetup < MiniTest::Test
  def setup
    @xbee_missing = false
    @uart_config = XBee::Config::XBeeUARTConfig.new()
    @xbee_usbdev_str = TOPLEVEL_BINDING.eval('self').instance_variable_get(:@xbee_usbdev_str)
    begin
      @xbee = XBee::BaseAPIModeInterface.new(@xbee_usbdev_str, @uart_config, :API, :SYNC)
    rescue
      @xbee_missing = true
    end
  end

  def test_uart
    assert_kind_of String, @xbee_usbdev_str
    assert_equal 9600, @uart_config.baud
    assert_equal 8, @uart_config.data_bits
    assert_equal 0, @uart_config.parity
    assert_equal 1, @uart_config.stop_bits
  end

  def test_operation_mode
    unless @xbee_missing
      assert_equal :API, @xbee.operation_mode
      @xbee.operation_mode = :AT
      assert_equal :AT, @xbee.operation_mode
      @xbee.operation_mode = :API
      assert_equal :API, @xbee.operation_mode
    end
  end

  def test_transmission_mode
    unless @xbee_missing
      assert_equal :SYNC, @xbee.transmission_mode
      @xbee.transmission_mode = :ASYNC
      assert_equal :ASYNC, @xbee.transmission_mode
      @xbee.transmission_mode = :SYNC
      assert_equal :SYNC, @xbee.transmission_mode
    end
  end

  def test_association_indication
    assert_equal 0, @xbee.association_indication unless @xbee_missing
  end
end
