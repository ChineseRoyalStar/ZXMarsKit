#
# Be sure to run `pod lib lint ZXMarsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZXMarsKit'
  s.version          = '1.1.2'
  s.summary          = 'ZKMarsKit by LeGuo'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UIKit for my beloved Z and X by LeGuo
                       DESC

  s.homepage         = 'https://github.com/Chineseroyalstar/ZXMarsKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chineseroyalstar' => 'chineseroyalstar@gmail.com' }
  s.source           = { :git => 'https://github.com/Chineseroyalstar/ZXMarsKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.ios.deployment_target = '8.0'

  s.source_files = 'ZXMarsKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZXMarsKit' => ['ZXMarsKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
