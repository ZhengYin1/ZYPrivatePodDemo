#
# Be sure to run `pod lib lint ZYPrivatePodDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZYPrivatePodDemo'
  s.version          = '0.1.0'
  s.summary          = '私有库测试demo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       测试建立的私有库测试demo.
                       DESC

  s.homepage         = 'https://github.com/ZhengYin1/ZYPrivatePodDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ZhengYin1' => 'zhengyin1@xiaomi.com' }
  s.source           = { :git => 'https://github.com/ZhengYin1/ZYPrivatePodDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZYPrivatePodDemo/ZYPrivatePodDemo/Classes/**/*'
  
  s.requires_arc = false
  s.requires_arc = ['ZYSafeArrayAndDictionary/Classes/NSObject+SafeSwizzle.m','ZYSafeArrayAndDictionary/Classes/ZYSafeUtilsManager.m']
  
  # s.resource_bundles = {
  #   'ZYPrivatePodDemo' => ['ZYPrivatePodDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'MapKit', 'Foundation'
   s.dependency 'AFNetworking'
   s.dependency 'ZYSafeArrayAndDictionary', '~> 0.6.0'
   s.dependency 'WCDB'
end
