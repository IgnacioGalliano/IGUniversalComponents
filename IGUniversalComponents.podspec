#
# Be sure to run `pod lib lint IGUniversalComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

Pod::Spec.new do |s|
  s.name             = 'IGUniversalComponents'
  s.version          = '0.1.0'
  s.summary          = 'IGUniversalComponents library for ios app.'
  s.homepage         = 'https://github.com/Ignacio Galliano/IGUniversalComponents'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ignacio Galliano' => 'gallianoignacio@gmail.com' }
  s.source           = { :git => 'https://github.com/IgnacioGalliano/IGUniversalComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.platform         = :ios, '10.0'
  s.requires_arc     = true
  s.static_framework = true
  s.swift_version = '5.0'

  s.source_files = 'LibraryComponents/**/*'
  
  s.subspec "Core" do |core|
      core.source_files = 'LibraryComponents/Core/Classes/**/*.{h,m,swift}'

      core.ios.resource_bundles = {
          'IGUniversalComponentsResources' => ['LibraryComponents/Classes/**/*.xib', 'LibraryComponents/Assets/**/*.xcassets'],
          'IGUniversalComponentsStrings' => ['LibraryComponents/Assets/**/*.lproj']
      }
      core.dependency 'IGUniversalComponents/Integration'

#      core.dependency 'Alamofire', '~> 1.23'
  end
  
  s.subspec "Integration" do |integration|
    integration.source_files = 'LibraryComponents/Integration/**/*.{h,m,swift}'
  end
end
