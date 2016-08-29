$: << File.dirname(__FILE__)
require 'test_helper'
require 'version'

# The most simple test there can possibly BE, let's check constant for constant
class RubyXbeeTest < MiniTest::Test
  def setup
      @xbee_version_major = ::XBee::Version::MAJOR
      @xbee_version_minor = ::XBee::Version::MINOR
      @xbee_version_patch = ::XBee::Version::PATCH
      @xbee_version_string = ::XBee::Version::STRING
  end

  def test_version_matches_testsuite
    assert_equal 1, @xbee_version_major
    assert_equal 2, @xbee_version_minor
    assert_equal 2, @xbee_version_patch
    assert_equal '1.2.2', @xbee_version_string
  end
end
