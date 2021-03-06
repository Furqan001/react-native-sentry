require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|
  s.name           = 'RNSentry'
  s.version        = version
  s.license        = 'MIT'
  s.summary        = 'Official Sentry SDK for react-native'
  s.author         = 'Sentry'
  s.homepage       = "https://github.com/Furqan001/react-native-sentry"
  s.source         = { :git => 'https://github.com/Furqan001/react-native-sentry.git', :tag => "#{s.version}"}

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"

  s.preserve_paths = '*.js'

  s.dependency 'React'
  s.dependency 'Sentry', '~> 5.2.0'

  s.source_files = 'ios/RNSentry.{h,m}'
  s.public_header_files = 'ios/RNSentry.h'
end
