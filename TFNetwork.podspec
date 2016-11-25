#
# Be sure to run `pod lib lint TFNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TFNetwork'
  s.version          = '0.1.9'
  s.summary          = '时光流影底层网络框架'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  s.homepage         = 'https://github.com/TimeFaceCoder/TFNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Melvin' => 'yangmin@timeface.cn' }
  s.source           = { :git => 'https://github.com/TimeFaceCoder/TFNetwork.git'}

  s.ios.deployment_target = '8.0'

  s.platform     = :ios, '8.0'

  s.source_files = 'TFNetwork/Classes/**/*'

  s.public_header_files = [
    'TFNetwork/Classes/*.h'
    ]
  s.library = 'z'
  s.requires_arc = true
  s.dependency 'MPMessagePack'
  s.dependency 'Godzippa'
  s.dependency 'AFNetworking'

end
