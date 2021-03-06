# -*- coding: utf-8 -*-
$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) ||
                                          $:.include?(File.expand_path(File.dirname(__FILE__)))

module Jpmobile
  autoload :Email,             'jpmobile/email'
  autoload :Emoticon,          'jpmobile/emoticon'
  autoload :Position,          'jpmobile/position'
  autoload :RequestWithMobile, 'jpmobile/request_with_mobile'
  autoload :Util,              'jpmobile/util'
  autoload :Encoding,          'jpmobile/encoding'
  autoload :Version,           'jpmobile/version'
  autoload :DatumConv,         'jpmobile/datum_conv'

  # autoload mobile classes
  module Mobile
    autoload :Docomo,         'jpmobile/mobile/docomo'
    autoload :Au,             'jpmobile/mobile/au'
    autoload :Softbank,       'jpmobile/mobile/softbank'
    autoload :Vodafone,       'jpmobile/mobile/vodafone'
    autoload :Emobile,        'jpmobile/mobile/emobile'
    autoload :Willcom,        'jpmobile/mobile/willcom'
    autoload :Ddipocket,      'jpmobile/mobile/ddipocket'
    autoload :SmartPhone,     'jpmobile/mobile/smart_phone'
    autoload :Iphone,         'jpmobile/mobile/iphone'
    autoload :Android,        'jpmobile/mobile/android'
    autoload :WindowsPhone,   'jpmobile/mobile/windows_phone'

    autoload :Display,        'jpmobile/mobile/display'

    module IpAddresses
      autoload :AbstractIpAddresses, 'jpmobile/mobile/ip_addresses/abstract_ip_addresses'
      autoload :Docomo,              'jpmobile/mobile/ip_addresses/docomo'
      autoload :Au,                  'jpmobile/mobile/ip_addresses/au'
      autoload :Softbank,            'jpmobile/mobile/ip_addresses/softbank'
      autoload :Vodafone,            'jpmobile/mobile/ip_addresses/softbank'
      autoload :Willcom,             'jpmobile/mobile/ip_addresses/willcom'
      autoload :Ddipocket,           'jpmobile/mobile/ip_addresses/willcom'
      autoload :Emobile,             'jpmobile/mobile/ip_addresses/emobile'
    end

    DEFAULT_CARRIERS = %w(Docomo Au Softbank Vodafone Emobile Willcom Ddipocket Iphone Android WindowsPhone)

    def self.carriers
      @carriers ||= DEFAULT_CARRIERS.dup
    end

    def self.carriers=(ary)
      @carriers = ary
    end

    require 'jpmobile/mobile/abstract_mobile'
  end

  # autoload Rack middlewares
  module Rack
    autoload :MobileCarrier, 'jpmobile/rack/mobile_carrier'
    autoload :ParamsFilter,  'jpmobile/rack/params_filter'
    autoload :Filter,        'jpmobile/rack/filter'
    autoload :Config,        'jpmobile/rack/config'
  end
  autoload :Configuration, 'jpmobile/rack'
end

if defined?(Rails)
  require 'jpmobile/rails'
end
