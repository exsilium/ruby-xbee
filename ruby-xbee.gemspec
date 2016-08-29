#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-

require './lib/version.rb'

Gem::Specification.new do |s|
  s.name = %q{ruby-xbee}
  s.version = XBee::Version::STRING
  s.licenses = ['AGPL']
  s.platform = Gem::Platform::RUBY

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Landon Cox', 'Mike Ashmore', 'Sten Feldman']
  s.date = %q{2015-11-14}
  s.email = %q{exile@chamber.ee}
  s.executables = %w(apicontrol.rb apilisten.rb ota_upgrade.rb ruby-xbee.rb xbeeconfigure.rb xbeedio.rb xbeeinfo.rb xbeelisten.rb xbeesend.rb)
  s.extra_rdoc_files = %w(LICENSE agpl.txt README.rdoc)
  s.files = %w(
    LICENSE
    README.rdoc
    Rakefile
    bin/apicontrol.rb
    bin/apilisten.rb
    bin/ota_upgrade.rb
    bin/ruby-xbee.rb
    bin/xbeeconfigure.rb
    bin/xbeedio.rb
    bin/xbeeinfo.rb
    bin/xbeelisten.rb
    bin/xbeesend.rb
    lib/apimode/at_commands.rb
    lib/apimode/frame/at_command.rb
    lib/apimode/frame/at_command_response.rb
    lib/apimode/frame/explicit_addressing_command.rb
    lib/apimode/frame/explicit_rx_indicator.rb
    lib/apimode/frame/frame.rb
    lib/apimode/frame/io_data_sample_rx_indicator.rb
    lib/apimode/frame/modem_status.rb
    lib/apimode/frame/receive_packet.rb
    lib/apimode/frame/remote_command_request.rb
    lib/apimode/frame/remote_command_response.rb
    lib/apimode/frame/transmit_request.rb
    lib/apimode/frame/transmit_status.rb
    lib/apimode/xbee_api.rb
    lib/legacy/command_mode.rb
    lib/module_config.rb
    lib/ruby_xbee.rb
    test/ruby_xbee_api_frame_eac_test.rb
    test/ruby_xbee_api_frame_erxi_test.rb
    test/ruby_xbee_api_frame_test.rb
    test/ruby_xbee_apimode_test.rb
    test/ruby_xbee_test.rb
    test/test_helper.rb)

  s.has_rdoc = true
  s.homepage = %q{http://github.com/exsilium/ruby-xbee}
  s.rdoc_options = %w(--charset=UTF-8)
  s.require_paths = %w(lib)
  s.summary = %q{Controlling an XBee module from Ruby either in AT (Transparent) or API mode. Both Series 1 and Series 2 radio modules are supported.}
  s.description = <<-EOF
  Middleware for controlling an XBee module from Ruby. Series 1, Series 2 modules
  supported in AT (Transparent) or API (non-escaped & escaped) mode.

  Examples included how to use including Over-The-Air application firmware
  upgrade for programmable XBee modules.
  EOF
  s.test_files = %w(test/ruby_xbee_api_frame_eac_test.rb
                    test/ruby_xbee_api_frame_erxi_test.rb
                    test/ruby_xbee_api_frame_test.rb
                    test/ruby_xbee_apimode_test.rb
                    test/ruby_xbee_test.rb
                    test/test_helper.rb)

  s.add_runtime_dependency(%q<serialport>, ['~> 1.3', '>= 1.3.1'])

  s.add_development_dependency "rake",               "~> 11.2"
  s.add_development_dependency "hanna-nouveau",      "~> 0.4"
  s.add_development_dependency "VersionCheck",       "~> 1.0"
  s.add_development_dependency "simplecov",          "~> 0.12"
  s.add_development_dependency "minitest",           "~> 5.9"
  s.add_development_dependency "minitest-reporters", "~> 1.1"
  s.add_development_dependency "coveralls",          "~> 0.8"
  s.add_development_dependency "tins",               "1.6"

end
